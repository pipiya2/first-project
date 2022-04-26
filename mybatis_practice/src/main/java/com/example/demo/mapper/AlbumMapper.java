package com.example.demo.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.AlbumVo;

@Mapper
public interface AlbumMapper {
	public int getCardNum();
	
	public ArrayList<AlbumVo> getAlbumList();
	
	public void insertAlbum(AlbumVo album);
	
	public void deleteAlbum(int cardNum);
}
