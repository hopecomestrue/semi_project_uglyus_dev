package com.veg.kth.community.model.dto;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Recipe {

	private int recipeNo;
	private String recipeOriginalFileName;
	private String recipeRenamedFileName;
	private String recipeTitle;
	private String recipeComment;
	private int recipeLeadTime;
	private Category category;
	private List<Hashtag> Hashtag = new ArrayList<>();
	private int recipeCapa;
	private List<Material> material = new ArrayList<>();
	private List<Procedure> procedure = new ArrayList<>();
	private Date recipeDate;
	private int member_no;
}
