package com.ganghwan.memo.common;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.web.multipart.MultipartFile;

public class FileManagerService {
	
	public final static String FILE_UPLOAD_PATH = "D:\\웹프런트 조경환1105\\Spring Project\\upload\\image/";
	
	// 파일 저장
	// static 객체 생성 없이 사용가능한 멤버 변수 - 변수 만듦
	public static String saveFile(int userId, MultipartFile file) {
		
		// 파일 경로
		// 사용자 별로 구분할 수 있도록
		// 사용자가 파일을 올린 시간으로 구분
		// ex) /12_293847628345/test.png
		// 1970년 1월 1일 기준으로 현지 밀리 세컨이 경과 되었는지 나타내는 수
		
		String directoryName = userId + "_" + System.currentTimeMillis() + "/";
		
		String filePath = FILE_UPLOAD_PATH + directoryName;
		
		// 디렉토리 생성
		File directory = new File(filePath);
		
		if(directory.mkdir() == false) {
			// 디렉토리 생성 에러
			return null;
		}
		
		// 파일 저장
		try {
			byte[] bytes = file.getBytes();
			
			//파일 저장 경로, 파일 이름 경로 관리 객체
			Path path = Paths.get(filePath + file.getOriginalFilename());
			
			// 파일 저장
			Files.write(path, bytes);
			
		} catch (IOException e) {
			
			// 파일 저장 실패
			e.printStackTrace();
			
			return null;
		}
		
		// 파일 접근 가능한 주소 리턴
		// <img src = "/images/12_29837456?test.png">
		
		return "/images/" + directoryName + file.getOriginalFilename();
	}
}