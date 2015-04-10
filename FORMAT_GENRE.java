import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.pig.EvalFunc;
import org.apache.pig.backend.executionengine.ExecException;
import org.apache.pig.data.Tuple;

public class FORMAT_GENRE extends EvalFunc <String> {

	

	@Override
    public String exec(Tuple input) {
		String output ="";
        try {
            if (input == null || input.size() == 0) {
                return null;
            }
			String str = (String) input.get(0);
            String netid = " <svs130130> ";
            String split_str[] = str.split("\\|");

            if (split_str.length > 1) {
                int i = 0;
                for (; i < split_str.length-2; i++) {
                    output = output + (i + 1) + ") " + split_str[i] + ",  ";
                }
                output = output + (i + 1) + ") " + split_str[i] + "  ";
                output = output +"& "+ (i + 2) + ") " + split_str[i] + "  ";
            } else if (split_str.length == 1) {
                output = "1) "+  split_str[0];
            }
            output = output + netid;
			
			
            return output;
        } catch (ExecException ex) {
            System.out.println("Error: " + ex.toString());
        }

        return null;
    }
}
