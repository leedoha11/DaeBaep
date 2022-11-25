package model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Trainer implements Serializable {

	private int trainerId;
	private String name;
	private int workoutId;
	
	public Trainer(int trainerId, String name, int workoutId) {
		this.trainerId = trainerId;
		this.name = name;
		this.workoutId = workoutId;
	}
	
	public Trainer(int trainerId, String name) {
		super();
		this.trainerId = trainerId;
		this.name = name;
	}

	public int getTrainerId() {
		return trainerId;
	}
	public void setTrainerId(int trainerId) {
		this.trainerId = trainerId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSportsId() {
		return workoutId;
	}
	public void setSportsId(int workoutId) {
		this.workoutId = workoutId;
	}

	@Override
	public String toString() {
		return "Tranier [trainerId=" + trainerId + ", name=" + name + ", workoutId=" + workoutId + "]";
	}
}
