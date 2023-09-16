package com.rezarowghani.dao;

import com.rezarowghani.entities.Picture;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class ParentDao {
    JdbcTemplate jdbcTemplate;
    RowMapper<?> rm;
}
