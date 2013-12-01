package mps.teabreak.gui;

import javax.swing.*;
import java.awt.event.*;


/**
 *  A class to extend the JButton object to provide a button that will
 *  exit the app when it is clicked.
 */
public class DismissButton extends JButton implements ActionListener
{
    /**
     *  Set the buttons text, and register this class to listen for click
     *  events.
     */
        public
    DismissButton ()
    {
        setText ("Yes, Boss");
        addActionListener (this);
    }

    /**
     *  This method is invoked when the button is clicked. Exit the app.
     */
        public void
    actionPerformed (ActionEvent e)
    {
        System.exit (0);
    }
}

// vim: ts=4 sw=4 et
