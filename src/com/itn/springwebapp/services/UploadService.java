package com.itn.springwebapp.services;

import org.springframework.web.multipart.MultipartFile;

public interface UploadService {
	
	public static final String UPLOAD_DIR = "//users//stim//documents//hms_uploads";
	
	public boolean uploadUserImage(MultipartFile image);
	
	

}
