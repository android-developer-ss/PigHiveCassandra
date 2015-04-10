
import org.apache.hadoop.hive.ql.exec.UDF;
import org.apache.hadoop.hive.ql.exec.Description;
import org.apache.hadoop.io.Text;


public class FORMAT_GENRE_HIVE extends UDF {

    public Text evaluate(Text input) {
		String output ="";
        String str = input.toString();
        String netid = " <svs130130> :hive ";
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
			
        return new Text(output);
    }
}
