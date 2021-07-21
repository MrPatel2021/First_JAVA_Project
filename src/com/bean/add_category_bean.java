package com.bean;

public class add_category_bean {		
		private int categoryId;
		private String categoryName;
		private int isActive;
		
		public int getCategoryid()
		{
			return categoryId;
		}
		public void setCategoryid(int id)
		{
			this.categoryId = id;
		}
		
		public String getCategoryname()
		{
			return categoryName;
		}
		public void setCategoryname(String categoryname)
		{
			this.categoryName = categoryname;
		}
		
		public int getIsactive()
		{
			return isActive;
		}
		public void setIsactive(int isactive)
		{
			this.isActive = isactive;
		}

}
