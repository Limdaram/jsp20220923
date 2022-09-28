package jsp20220923.chap07;

public class Person {
	// 읽고 쓸 수 있는 
	// name, age 프로퍼티 작성
	
	private String name;
	private Integer age;
	private boolean alive;
	
	public Person() {
		
	}
	
	public Person(String name, Integer age, boolean alive) {
		super();
		this.name = name;
		this.age = age;
		this.alive = alive;
	}
	


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public boolean isAlive() {
		return alive;
	}

	public void setAlive(boolean alive) {
		this.alive = alive;
	}
	
}
