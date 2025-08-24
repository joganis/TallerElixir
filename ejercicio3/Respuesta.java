package ejercicio3;


import javax.swing.JOptionPane;

public class Respuesta {
    public static void main(String[] args) {
        if (args.length > 0 && args[0].equals("input")) {
            // Modo input: solicitar datos al usuario
            String message = args[1];
            String input = JOptionPane.showInputDialog(null, message);
            if (input != null) {
                System.out.println(input);
            } else {
                System.out.println("");
            }
        } else if (args.length > 0) {
            // Modo mensaje: mostrar resultado
            String message = args[0];
            JOptionPane.showMessageDialog(null, message, "Resultado", JOptionPane.INFORMATION_MESSAGE);
        } else {
            JOptionPane.showMessageDialog(null, "No message provided.");
        }
    }
}