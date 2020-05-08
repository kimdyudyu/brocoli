package com.kh.brocoli.board.model.vo;

public class SearchCondition {

	private String writer;
	private String title;
	private String content;
	private String search;
	private String condition;
	
	public SearchCondition() {
		super();
	
	}

	public SearchCondition(String writer, String title, String content, String search, String condition) {
		super();
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.search = search;
		this.condition = condition;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	@Override
	public String toString() {
		return "SearchCondition [writer=" + writer + ", title=" + title + ", content=" + content + ", search=" + search
				+ ", condition=" + condition + "]";
	}

}
