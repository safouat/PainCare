package Health;

import java.util.ArrayList;

public class DiagnosticBean {
	private int id;
	private int user_id;
	private ArrayList<Integer> answers;
	
	public void setID(int id) {
		this.id = id;
	}
	
	public void setUserID(int id) {
		this.user_id = id;
	}
	
	public void setAnswers(String answers) {
		ArrayList<Integer> intList = new ArrayList<Integer>();
        String[] parts = answers.split(",");

        for (String part : parts) {
            int num = Integer.parseInt(part.trim());

            intList.add(num);
        }
        
        this.answers = intList;
	}
	
	public int geID() {
		return this.id;
	}
	
	public int getUserID() {
		return this.user_id;
	}
	
	public ArrayList<Integer> getAnswers() {
		return this.answers;
	}
	
	private float answerValue(int question, int answer) {
		switch(question) {
	    	case 0 : switch(answer) {
	    		case 0: return (float) 0.35;
	    		case 1: return (float) 1;
			}; break;
	    	case 1 : switch(answer) {
	    		case 0: return (float) .5;
	    		case 1: return (float) 1;
	    		case 2: return (float) .75;
			}; break;
	    	case 2 : switch(answer) {
	    		case 0: return (float) 1;
	    		case 1: return (float) 0;
			}; break;
	    	case 3 : switch(answer) {
	    		case 0: return (float) 1;
	    		case 1: return (float) 0;
			}; break;
	    	case 4 : switch(answer) {
	    		case 0: return (float) 1;
	    		case 1: return (float) 0;
			}; break;
	    }
		
		throw new RuntimeException("Question number " + question + "option " + answer + " has no value calculator");
	}
	
	public float calcScore() {
		float result = 0;
		
		for (int question = 0; question < answers.size(); question++) {
            int answer = answers.get(question);

            result += answerValue(question, answer);
        }
		
		return 10 * result / answers.size();
	}
	
	public String calcResult() {
		float res = calcScore();
		
		if(res > 7) return "High";
		if(res > 4) return "Medium";
		
		return "Low";
	}
}
