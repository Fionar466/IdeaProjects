package service;

import entity.Category;

import java.util.List;

public interface CategoryService {
    List<Category> findAll() throws Exception;
}
