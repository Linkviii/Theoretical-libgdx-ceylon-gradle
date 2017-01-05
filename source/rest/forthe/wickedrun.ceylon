import com.badlogic.gdx.backends.lwjgl {
	LwjglApplication,
	LwjglApplicationConfiguration
}

import com.badlogic.gdx {
	ApplicationAdapter,
	Gdx
}
import com.badlogic.gdx.graphics {
	GL20,
	Texture
}
import com.badlogic.gdx.graphics.g2d {
	SpriteBatch
}

shared class MyGdxGame() extends ApplicationAdapter() {
	variable SpriteBatch batch = SpriteBatch();
	//variable Texture img = Texture("badlogic.jpg");
	
	shared actual void create() {
		//batch = SpriteBatch();
		//img = Texture("badlogic.jpg");
	}
	
	shared actual void render() {
		Gdx.gl.glClearColor(1.0, 0.0, 0.0, 1.0);
		Gdx.gl.glClear(GL20.glColorBufferBit);
		batch.begin();
		
		//batch.draw(img, 0.0, 0.0);
		batch.end();
	}
	
	shared actual void dispose() {
		batch.dispose();
		//img.dispose();
	}
}

shared void main() {
	
	
	LwjglApplicationConfiguration config = LwjglApplicationConfiguration();
	LwjglApplication(MyGdxGame(), config);
}


"Run the module `just`."
shared void doIt() {
	print("do it");
}



"Run the module `rest.forthe`."
shared void run() {
    print("no rest for the");
}