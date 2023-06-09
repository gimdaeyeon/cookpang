package com.cookpang.app.comment.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.cookpang.app.comment.dto.CommentDTO;
import com.cookpang.app.comment.vo.CommentVO;
import com.mybatis.config.MyBatisConfig;

public class CommentDAO {

	public SqlSession sqlSession;
	
	public CommentDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<CommentVO> getCommentList(int postNumber) {
		return sqlSession.selectList("comment.getCommentList", postNumber);
	}
	public void commentPosting(CommentDTO commentDTO) {
		sqlSession.insert("comment.commentPosting", commentDTO);
	}
	public void deleteComment(int commentNumber) {
		sqlSession.delete("comment.deleteComment", commentNumber);
	}
	
	public void delete(int userNumber) {
		sqlSession.delete("comment.delete",userNumber);
	}
	public void deleteByPostNumber(int postNumber) {
		sqlSession.delete("comment.deleteByPostNumber",postNumber);
	}
	
}


















