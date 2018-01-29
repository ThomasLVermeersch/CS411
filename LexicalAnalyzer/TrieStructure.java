public class TrieStructure{

	public TrieStructure(){
		int[] switch_arr = new int[52];
		char[] symbol_arr = new char[1000];
		int[] next_arr = new int[1000];
		for(int i = 0 ; i < switch_arr.length; i++) switch_arr[i] = -1;
		for(int i = 0; i < next_arr.length; i++ ) next_arr[i] = -1;
		int openIndex = 0;
	}

	public void insert(String str){
		for ( char ch : str.toCharArray()){
			//Convert character to index value
			int index = getIndex(ch);
			//get location for first character
		}
	}
	public int getIndex(char ch){
		int ascii = (int) ch;
		if(ascii <= 90) return ascii - 65;
		else return ascii - 97;
	}
}