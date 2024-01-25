package test;

package test;

import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.layout.StackPane;
import javafx.scene.text.Font;
import javafx.scene.text.Text;
import javafx.stage.Stage;

public class TimeUp extends Application {
    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage primaryStage) {
    	 // 創建文字元件
        Text gameOverText = new Text("TimeUp");
        gameOverText.setFont(new Font(40)); // 設置字體大小

        // 獲取原有 Scene 的根節點，並將文字元件添加到根節點上
        gameScene.getRoot().getChildrenUnmodifiable().add(gameOverText);

        // 顯示舞台
        primaryStage.setScene(gameScene);
        primaryStage.show();
    }
}