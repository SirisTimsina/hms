package com.itn.springwebapp.services;

import java.io.File;
import java.io.IOException;

import org.jboss.logging.Logger;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;


@Service
public class UploadServiceImpl implements UploadService
{

	@Override
	public boolean uploadUserImage(MultipartFile image){
		
		boolean status = false;
		String uploadFolder = UPLOAD_DIR + File.separator + "user_image";
		File uploadDir = new File(uploadFolder);
		if(!uploadDir.exists()) {
			uploadDir.mkdirs();  // creates image upload dir if not exists
		}
		
		// creates a uploadfile with filename from a uploaded file
		String uploadFile = uploadFolder + File.separator + image.getOriginalFilename();
		
		
		//creates an empty file to be uploaded into a server, 
		// this only create a logical file inside our app
		
		File uploadImage = new File(uploadFile);
		
		// and data from the upload is transfered into that file
		// thus creating a physical file into our file system
		try {
				image.transferTo(uploadImage);
				status = true;
				// uplad success
			} catch (IllegalStateException | IOException e) {
				Logger.getMessageLogger(UploadService.class, "Image upload Failed!");
			}
		
		return status;
	}

	
	
}
