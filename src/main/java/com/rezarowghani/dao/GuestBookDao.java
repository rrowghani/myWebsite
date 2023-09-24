package com.rezarowghani.dao;

import com.rezarowghani.entities.GuestBook;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;

@Service
@PropertySource("classpath:countryCodes.properties")
public class GuestBookDao extends ParentDao {
    Environment env;
    public GuestBookDao(JdbcTemplate jdbcTemplate, Environment env) throws IOException {
        this.jdbcTemplate = jdbcTemplate;
        this.env = env;
        rm = (rs, rowNum) -> {
            return new GuestBook(rs.getInt("Id"), rs.getString("Name"), rs.getString("Comment"), rs.getDate("TimeStamp"), rs.getString("Country"));
        };
    }

    public void addEntry(String name, String comment, String country) {
        String sql = "INSERT INTO GUESTBOOK(Name, Comment, Country , TimeStamp) VALUES (?,?,?,CURRENT_DATE)";
        jdbcTemplate.update(sql, name, comment, env.getProperty(country));
    }
    @SuppressWarnings("unchecked")
    public List<GuestBook> getGuestBookEntries() {
        String sql = "SELECT * FROM GUESTBOOK ORDER BY Id DESC LIMIT 20";
        return (List<GuestBook>)jdbcTemplate.query(sql, rm);
    }
}
