package com.example.demo.service;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.example.demo.mapper.AlbumMapper;
import com.example.demo.vo.AlbumVo;

@Service
public class AlbumService {
	
	@Autowired
	AlbumMapper am;
	
	public void deleteAlbum(int cardNum,HttpServletRequest request) {
		deleteFolder(cardNum,request);
		am.deleteAlbum(cardNum);
	}
	
	
	private void deleteFolder(int cardNum,HttpServletRequest request) {
		//ServletContext context = request.getSession().getServletContext();
		//String path = context.getRealPath("");
		String imageUrl = "C:\\image_repository\\card"+cardNum;
		//path = path.substring(0, path.length()-7)+"resources\\static\\img\\card"+cardNum;
		File folder = new File(imageUrl);
		try {
		    while(folder.exists()) {
			File[] folder_list = folder.listFiles(); //파일리스트 얻어오기
					
			for (int j = 0; j < folder_list.length; j++) {
				folder_list[j].delete(); //파일 삭제 
				System.out.println("파일이 삭제되었습니다.");
						
			}
					
			if(folder_list.length == 0 && folder.isDirectory()){ 
				folder.delete(); //대상폴더 삭제
				System.out.println("폴더가 삭제되었습니다.");
			}
	            }
		 } catch (Exception e) {
			e.getStackTrace();
		}
	}


	public ArrayList<AlbumVo> getAlbumList(){
		return am.getAlbumList();
	}
	public void addAlbum(MultipartHttpServletRequest request) {
		String region = request.getParameter("region");
		String describe = request.getParameter("describe");
		System.out.println("region : " +region);
		System.out.println("describe : "+describe);
		//ServletContext context = request.getSession().getServletContext();
		AlbumVo av = new AlbumVo();
		// 다음카드번호 db에서 받아오기
		int cardNum = am.getCardNum() + 1;
		av.setRegion(region);
		av.setDescribe(describe);
		av.setCardNum(cardNum);
		String imageUrl = "C:\\image_repository\\card"+cardNum;
		// 다음카드번호로 폴더생성
		File folder = new File(imageUrl); // 
		try {
			folder.mkdir();
		}catch(Exception e) {
			e.printStackTrace();
		}
		imageUrl += "\\"; // \src\main\resources\img\+cardNum\
		System.out.println("imageUrl ==> "+imageUrl);
		
		Iterator<String> iterator = request.getFileNames();
		while(iterator.hasNext()){
			String fileName = iterator.next();
			
			MultipartFile mFile = request.getFile(fileName);
			String originFileName = mFile.getOriginalFilename();
			System.out.println("originFileName = " + originFileName);
			av.setImgName(originFileName);
			try {
				// 파일 업로드
				mFile.transferTo(new File(imageUrl+originFileName));
				am.insertAlbum(av);
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}
	}
}
