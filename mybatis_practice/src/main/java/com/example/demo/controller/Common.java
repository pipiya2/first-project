
package com.example.demo.controller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.example.demo.mapper.AlbumMapper;
import com.example.demo.service.AlbumService;
import com.example.demo.vo.AlbumVo;

@Controller
public class Common {
	@Autowired
	AlbumService abs;
	
	@ResponseBody
	@PostMapping("/getAlbumList")
	public ArrayList<AlbumVo> index() {
		return abs.getAlbumList();
	}

	@GetMapping("/")
	public String home() {
		return "home";
	}
	
	@GetMapping("/addForm")
	public String addForm(HttpServletRequest request) {
		ServletContext context = request.getSession().getServletContext();
		//String uploadPath = context.getRealPath("");
		//System.out.println(uploadPath);
		return "addForm";
	}
	
	@ResponseBody
	@PostMapping("/addAlbum")
	public String addAlbum(MultipartHttpServletRequest request) {
		System.out.println("성공");
		abs.addAlbum(request);
		return "success";
	}
	
	@ResponseBody
	@PostMapping("/deleteAlbum")
	public String deleteAlbum(@RequestParam("cardNum") int cardNum, HttpServletRequest request) {
		abs.deleteAlbum(cardNum,request);
		return "success";
	}
	
}
