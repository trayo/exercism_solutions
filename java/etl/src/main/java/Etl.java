import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;




public class Etl {
	public Map<String, Integer> transform(Map<Integer, List<String>> old){

		Map<String, Integer> sorted = new TreeMap<String, Integer>();

		for (Entry<Integer, List<String>> entry : old.entrySet()) {
			for (int i = 0; i < entry.getValue().size(); i++) {
				sorted.put(entry.getValue().get(i).toLowerCase(), entry.getKey());
			}
		}
		
		return sorted;
	}
}