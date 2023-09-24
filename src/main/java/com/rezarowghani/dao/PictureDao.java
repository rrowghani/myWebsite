package com.rezarowghani.dao;

import com.rezarowghani.entities.Picture;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PictureDao extends ParentDao {

    public PictureDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
        rm = (rs, rowNum) -> {
            return new Picture(rs.getString("Id"), rs.getString("Category"), rs.getString("Description"));
        };
    }

    public Picture retrievePicturesById(String Id) {
        String sql = "SELECT * FROM PICTURES WHERE Id=?";
        return (Picture) jdbcTemplate.queryForObject(sql, rm, Id);
    }
    @SuppressWarnings("unchecked")
    public List<Picture> retrievePicturesByCategory(String category) {
        String sql = "SELECT * FROM PICTURES WHERE Category=?";
        return (List<Picture>) jdbcTemplate.query(sql, rm, category);
    }
}
