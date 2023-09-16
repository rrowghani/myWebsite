package com.rezarowghani.dao;

import com.rezarowghani.entities.GuestBook;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GuestBookDao extends ParentDao {
    public GuestBookDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
        rm = (rs, rowNum) -> {
            return new GuestBook(rs.getInt("Id"), rs.getString("Name"), rs.getString("Comment"), rs.getDate("TimeStamp"));
        };
    }

    public void addEntry(String name, String comment) {
        String sql = "INSERT INTO GUESTBOOK(Name, Comment, TimeStamp) VALUES (?,?,CURRENT_DATE)";
        jdbcTemplate.update(sql, name, comment);
    }

    public List<GuestBook> getGuestBookEntries() {
        String sql = "SELECT * FROM GUESTBOOK ORDER BY Id DESC LIMIT 20";
        return (List<GuestBook>)jdbcTemplate.query(sql, rm);
    }
}
