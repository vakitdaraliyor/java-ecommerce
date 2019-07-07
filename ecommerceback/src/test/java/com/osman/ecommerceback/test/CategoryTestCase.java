package com.osman.ecommerceback.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.osman.ecommerceback.dao.CategoryDAO;
import com.osman.ecommerceback.dto.Category;

public class CategoryTestCase {
	
	private static AnnotationConfigApplicationContext context;
	private static CategoryDAO categoryDAO;
	private Category category; 
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.osman.ecommerceback");
		context.refresh();
		categoryDAO = (CategoryDAO)context.getBean("categoryDAO");
	}
	
	/*@Test
	public void testAddCategory() {
		category = new Category();
		
		category.setName("Laptop");
		category.setDescription("Laptop description");
		category.setImageURL("CAT2.png");
		
		assertEquals("Successfully added a category inside the table", true, categoryDAO.add(category));
	}*/
	
	/*@Test
	public void testGetCategory() {
		
		category = categoryDAO.get(2);
		
		assertEquals("Successfully fetched a single category from the table", "Laptop", category.getName());
	}*/
	
	/*@Test
	public void testUpdateCategory() {
		
		category = categoryDAO.get(2);
		category.setName("TV");
		
		assertEquals("Successfully updated a single category in the table", true, categoryDAO.update(category));
	}*/
	
	/*@Test
	public void testDeleteCategory() {
		
		category = categoryDAO.get(2);
		
		assertEquals("Successfully deleted a single category in the table", true, categoryDAO.delete(category));
	}*/
	
	/*@Test
	public void testListCategory() {
		
		assertEquals("Successfully fetched the list of categories from the table", 1, categoryDAO.list().size());
	}*/
	
	@Test
	public void testCRUDCategory() {
		
		// ADD OPERATION
		category = new Category();
		
		category.setName("Laptop");
		category.setDescription("Laptop description");
		category.setImageURL("CAT1.png");
		
		assertEquals("Successfully added a category inside the table", true, categoryDAO.add(category));
		
		category = new Category();
		
		category.setName("Television");
		category.setDescription("Television description");
		category.setImageURL("CAT2.png");
		
		assertEquals("Successfully added a category inside the table", true, categoryDAO.add(category));
		
		// FETCHIN AND UPDATE OPERATION
		category = categoryDAO.get(2);
		category.setName("TV");
		
		assertEquals("Successfully updated a single category in the table", true, categoryDAO.update(category));
		
		// DELETE OPERATION		
		assertEquals("Successfully deleted a single category in the table", true, categoryDAO.delete(category));
		
		// LIST OPERATION
		assertEquals("Successfully fetched the list of categories from the table", 1, categoryDAO.list().size());
		
	}

}
