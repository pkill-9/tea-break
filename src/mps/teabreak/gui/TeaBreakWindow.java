package mps.teabreak.gui;

import java.awt.*;
import javax.swing.*;


/**
 *  GUI window and main class of a program to tell the user to take a
 *  break. This program is invoked periodically by a cron job, so the only
 *  task for this program is to pop up a window.
 */
public class TeaBreakWindow extends JFrame
{
    /**
     *  Initialise the frame, and add components to it. The swing framework
     *  will then listen for events.
     */
        public
    TeaBreakWindow () throws Exception
    {
        Container pane = getContentPane ();
        pane.setLayout (new BorderLayout ());

        JLabel message = new JLabel ("It's time to take a break!");
        Font labelFont = message.getFont ();
        message.setFont (new Font (labelFont.getName (), Font.BOLD, 25));

        pane.add (message, BorderLayout.CENTER);

        addButtonPanel (pane);

        UIManager.setLookAndFeel (UIManager.getSystemLookAndFeelClassName ());
        setDefaultCloseOperation (JFrame.EXIT_ON_CLOSE);
        setTitle ("Tea Break");
        pack ();
        setLocationRelativeTo (null);
        setVisible (true);
    }

        private void
    addButtonPanel (Container panel)
    {
        JPanel buttonPanel = new JPanel (new FlowLayout ());
        buttonPanel.add (new WhyButton (this));
        buttonPanel.add (new DismissButton ());

        // add the buttons to the main window.
        panel.add (buttonPanel, BorderLayout.PAGE_END);
    }

    /**
     *  Main entry point for the program. Build the window, then let the
     *  event driven framework handle the rest.
     */
        public static void 
    main (String [] args)
    {
        try
        {
            new TeaBreakWindow ();
        }
        catch (Exception e)
        {
            ;
        }
    }
}

// vim: ts=4 sw=4 et
