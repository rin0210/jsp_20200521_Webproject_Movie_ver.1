package db;

public class MovieDTO {
	private int no;
	private String title;
	private String year;
	private String age;
	private String time;
	private String content;
	private String actor;
	private String director;
	private String genre;
	private String img_1;
	private String img_2;

	public String getImg_1() {
		return img_1;
	}

	public void setImg_1(String img_1) {
		this.img_1 = img_1;
	}

	public String getImg_2() {
		return img_2;
	}

	public void setImg_2(String img_2) {
		this.img_2 = img_2;
	}

	private String video;
	private int hits;

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getActor() {
		return actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getVideo() {
		return video;
	}

	public void setVideo(String video) {
		this.video = video;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

}
