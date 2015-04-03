/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.github.cc007.lightsaverdemo;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Rik
 */
public class LightSaverDemo {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            String pathToLightSaver = "D:\\Local\\My Documents\\NetBeansProjects\\LightSaverDemo";
            Runtime.getRuntime().exec("cmd.exe /c cd \"" + pathToLightSaver + "\" & start D:\\helloWorld.bat");
            
        } catch (IOException ex) {
            Logger.getLogger(LightSaverDemo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
