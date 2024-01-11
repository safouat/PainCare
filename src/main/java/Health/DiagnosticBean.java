package Health;

import java.util.ArrayList;

import Health.servlets.Diagnostic;

public class DiagnosticBean {
	private int id;
	private int user_id;
	private ArrayList<ArrayList<Integer>> answers;
	
	public void setID(int id) {
		this.id = id;
	}
	
	public void setUserID(int id) {
		this.user_id = id;
	}
	
	public void setAnswers(String answers) {
		ArrayList<ArrayList<Integer>> intList = new ArrayList<ArrayList<Integer>>();
        String[] parts = answers.split(",");

        for (String part : parts) {
        	ArrayList<Integer> valuesList = new ArrayList<Integer>();
        	String[] values = part.split("-");
        	
        	for (String value : values) valuesList.add(Integer.parseInt(value));
        	
        	intList.add(valuesList);
        }
        
        this.answers = intList;
	}
	
	public int geID() {
		return this.id;
	}
	
	public int getUserID() {
		return this.user_id;
	}
	
	public ArrayList<ArrayList<Integer>> getAnswers() {
		return this.answers;
	}
	
	private float answerValue(int question, ArrayList<Integer> answer) {
		switch(question) {
	    	case 0 : switch(answer.get(0)) {
	    		case 0: return (float) 0.35;
	    		case 1: return (float) 1;
			}; break;
			
	    	case 1 : switch(answer.get(0)) {
	    		case 0: return (float) .5;
	    		case 1: return (float) 1;
	    		case 2: return (float) .75;
			}; break;
			
	    	case 2 : switch(answer.get(0)) {
	    		case 0: return (float) 1;
	    		case 1: return (float) 0;
			}; break;
			
	    	case 3 : switch(answer.get(0)) {
	    		case 0: return (float) 1;
	    		case 1: return (float) 0;
			}; break;
			
	    	case 4 : switch(answer.get(0)) {
	    		case 0: return (float) 1;
	    		case 1: return (float) 0;
			}; break;
			
	    	case 5 : {
	    		int weight = answer.get(0);
	    		int height = answer.get(1);
	    		
	    		return weight / height;
	    	}
	    	
	    	case 6 : switch(answer.get(0)) {
	    		case 0: return (float) 0.25;
	    		case 1: return (float) 0.5;
	    		case 2: return (float) 0.75;
	    		case 3: return (float) 1;
			};
			
	    	case 7 : {
	    		float val = 0;
	    		
	    		for(int i = 0; i < answer.size(); i++) {
	    			switch(answer.get(i)) {
	    				case 0: val += 0.5; break;
	    				case 1: val += 0.5; break;
	    				case 2: val = 0; break;
	    			}
	    		}
	    		
	    		return val;
	    	}
	    }
		
		return (float) 0.5;
	}
	
	public float calcScore() {
		float result = 0;
		int factorsSum = 0;
		
		for (int question = 0; question < answers.size(); question++) {
			int factor = (int) Diagnostic.questionsBank[question][3];
			ArrayList<Integer> answer = answers.get(question);
			
			factorsSum += factor;
            result += answerValue(question, answer) * factor;
        }
		
		return 100 * result / factorsSum;
	}
	
	public String calcResult() {
		float res = calcScore();
		
		if(res > 70) return "High";
		if(res > 40) return "Medium";
		
		return "Low";
	}
}
