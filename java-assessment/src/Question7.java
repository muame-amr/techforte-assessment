import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.*;

@SuppressWarnings({"SameParameterValue", "ConstantValue"})
public class Question7 {
    public static void main(String[] args) {
        File storyFile = readFile("src/cano.txt");
        Map<String, Integer> wordCounts = countKeyword(storyFile);

        if (!wordCounts.isEmpty() && wordCounts != null) {

            List<Map.Entry<String, Integer>> sortedWordCounts = wordCounts.entrySet().stream()
                    .sorted(Map.Entry.<String, Integer>comparingByValue().reversed())
                    .limit(10)
                    .toList();

            for (Map.Entry<String, Integer> entry : sortedWordCounts)
                System.out.println(entry.getKey() + ": " + entry.getValue());
        }

    }

    private static Map<String, Integer> countKeyword(File storyFile) {
        Map<String, Integer> wordCounts = new HashMap<>();

        try (BufferedReader reader = new BufferedReader(new FileReader(storyFile))) {
            String line;
            while ((line = reader.readLine()) != null) {
                String[] words = line.toLowerCase().split("\\W+");

                for (String word : words)
                    if (!word.isEmpty())
                        wordCounts.put(word, wordCounts.getOrDefault(word, 0) + 1);

            }
        } catch (IOException e) {
            System.err.println("Error reading file: " + storyFile);
            e.printStackTrace();
        }

        return wordCounts;
    }

    private static File readFile(String filePath) {
        if (filePath != null && filePath.endsWith(".txt")) {
            File file = new File(filePath);
            if (file.exists() && file.isFile()) {
                return file;
            }
        }
        System.err.println("Invalid file path or not a .txt file: " + filePath);
        return null;
    }
}
