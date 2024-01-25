
package test ;

import javafx.animation.AnimationTimer;
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.canvas.Canvas;
import javafx.scene.canvas.GraphicsContext;
import javafx.scene.input.KeyCode;
import javafx.scene.layout.StackPane;
import javafx.scene.paint.Color;
import javafx.stage.Stage;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;

public class test extends Application {
    private static final int WIDTH = 800;
    private static final int HEIGHT = 600;
    private static final int PLAYER_SIZE = 36;
    private static final int MONSTER_SIZE = 100;
    private static final int PLAYER_SPEED = 10;
    
    
    
    private double playerX = WIDTH / 2;
    private double playerY = HEIGHT / 2;
    private double monsterX = Math.random() * (WIDTH - MONSTER_SIZE);
    private double monsterY = Math.random() * (HEIGHT - MONSTER_SIZE);

    private boolean upPressed = false;
    private boolean downPressed = false;
    private boolean leftPressed = false;
    private boolean rightPressed = false;
    
    private Image mapImage;
    private Image monsterImage;
    private Image fighterImage;
    private static final String ATTACK_ANIMATION_PATH = "player_attack.gif";

    @Override
    public void start(Stage primaryStage) {
        Canvas canvas = new Canvas(WIDTH, HEIGHT);
        GraphicsContext gc = canvas.getGraphicsContext2D();

        StackPane root = new StackPane(canvas);
        Scene scene = new Scene(root, WIDTH, HEIGHT);
        
        //sunliu
        mapImage = new Image("C:\\CSIE_HW\\MonsterGame\\Map1\\Sample.png") ;
        monsterImage = new Image("C:\\CSIE_HW\\MonsterGame\\superpowers-asset-packs-master\\rpg-battle-system\\monster\\ghost\\idle.gif") ;
        fighterImage = new Image("C:\\CSIE_HW\\MonsterGame\\superpowers-asset-packs-master\\rpg-battle-system\\monster\\giant\\idle.gif");
        
       
        
        scene.setOnKeyPressed(e -> {
            if (e.getCode() == KeyCode.UP) upPressed = true;
            if (e.getCode() == KeyCode.DOWN) downPressed = true;
            if (e.getCode() == KeyCode.LEFT) leftPressed = true;
            if (e.getCode() == KeyCode.RIGHT) rightPressed = true;
            if (e.getCode() == KeyCode.SPACE) {
                // 播放攻擊動畫
//                playerImageView.setImage(attackImage);
//                playerImageView.setCache(true);
//                playerImageView.setCacheHint(ImageCacheHint.SPEED);
//                playerImageView.setCacheHint(ImageCacheHint.DEFAULT);
//                playerImageView.setPreserveRatio(true);
//                playerImageView.setFitWidth(attackImage.getWidth());
//                playerImageView.setFitHeight(attackImage.getHeight());
//                playerImageView.setCycleCount(Animation.INDEFINITE);
//                playerImageView.play();
            }
        });

        scene.setOnKeyReleased(e -> {
            if (e.getCode() == KeyCode.UP) upPressed = false;
            if (e.getCode() == KeyCode.DOWN) downPressed = false;
            if (e.getCode() == KeyCode.LEFT) leftPressed = false;
            if (e.getCode() == KeyCode.RIGHT) rightPressed = false;
        });

        primaryStage.setScene(scene);
        primaryStage.setTitle("Monster Game");
        primaryStage.show();

        AnimationTimer gameLoop = new AnimationTimer() {
            @Override
            public void handle(long now) {
                update(gc);
                render(gc);
            }
        };
        gameLoop.start();
    }

    private void update(GraphicsContext gc) {
        if (upPressed) playerY -= PLAYER_SPEED;
        if (downPressed) playerY += PLAYER_SPEED;
        if (leftPressed) playerX -= PLAYER_SPEED;
        if (rightPressed) playerX += PLAYER_SPEED;

     // 碰撞檢測
        if (playerX < 0) playerX = 0;
        if (playerX > WIDTH - PLAYER_SIZE) playerX = WIDTH - PLAYER_SIZE;
        if (playerY < 0) playerY = 0;
        if (playerY > HEIGHT - PLAYER_SIZE) playerY = HEIGHT - PLAYER_SIZE;

        // 玩家與怪物碰撞檢測
        if (playerX < monsterX + MONSTER_SIZE &&
            playerX + PLAYER_SIZE > monsterX &&
            playerY < monsterY + MONSTER_SIZE &&
            playerY + PLAYER_SIZE > monsterY) {
            // 玩家與怪物碰撞
            System.out.println("Hit!");
            // 在這裡處理玩家與怪物碰撞的相應邏輯
        }

        // 更新怪物的位置
        // 這裡可以根據你的需求實現怪物的移動邏輯
       
        monsterX += Math.random() * 4 - 2;
        monsterY += Math.random() * 4 - 2;

        // 清空畫布
        gc.clearRect(0, 0, WIDTH, HEIGHT);
//
//        // 繪製玩家
//        gc.setFill(Color.BLUE);
//        gc.fillRect(playerX, playerY, PLAYER_SIZE, PLAYER_SIZE);
//
//        // 繪製怪物
//        gc.setFill(Color.RED);
//        gc.fillRect(monsterX, monsterY, MONSTER_SIZE, MONSTER_SIZE);
    }

    private void render(GraphicsContext gc) {
    	// 繪製地圖背景
        gc.drawImage(mapImage, 0, 0, WIDTH, HEIGHT);
       
        // 繪製玩家
        gc.drawImage(fighterImage, playerX, playerY);
//        gc.setFill(Color.BLUE);
//        gc.fillRect(playerX, playerY, PLAYER_SIZE, PLAYER_SIZE);

        // 繪製怪物
        gc.drawImage(monsterImage, monsterX, monsterY);
//        gc.setFill(Color.RED);
//        gc.fillRect(monsterX, monsterY, MONSTER_SIZE, MONSTER_SIZE);
    }

    public static void main(String[] args) {
        launch(args);
    }
}
