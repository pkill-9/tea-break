package mps.teabreak.gui;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.util.Random;


/**
 *  Extends the default button object to display a message dialog with a
 *  randomly generated "reason" to take a break when the user clicks the
 *  button.
 */
public class WhyButton extends JButton implements ActionListener
{
    Random rand;
    Component parent;

    /**
     *  On construction, set the button text, and make sure that our event
     *  handler is invoked when the user clicks the button.
     *
     *  @param parent The parent GUI window for the dialog.
     */
        public
    WhyButton (Component parent)
    {
        setText ("Why Should I?");
        addActionListener (this);

        // create a new random number generator to generate responses.
        rand = new Random ();

        this.parent = parent;
    }

    /**
     *  Generate a random response, and display it in a message dialog.
     */
        public void
    actionPerformed (ActionEvent e)
    {
        JOptionPane.showMessageDialog (parent, "Because.");
    }
}

// vim: ts=4 sw=4 et
