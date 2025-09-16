#!/usr/bin/perl
use strict;
use warnings;
use feature 'say';
use Time::HiRes qw(usleep);

# Function to display the Illuminati Smiley Pyramid ASCII art
sub display_ascii_art {
    say <<'END_ART';
                                                           
                            AAA                            
                           AAAAA                           
                          AAAAAAA                          
                         AAAA sAAA                         
                        AAAF   sAAA                        
                       AAAA      AAA                       
                      AAAL       yAAAA                     
                     AAAF          AAAA                    
                    AAAS            AAAA                   
                   AAAS              AAAA                  
                  AAAX                AAAA                 
                 AAA5       lAA        FAAA                
               AAAA5        AAAa        AAAA               
               AAAl         AAAS         LAAA              
             AAAAl          AAAS          LAAA             
            AAAAy           AAAs           LAAA            
           AAAAy             X5             SAAA           
          AAAA                               SAAA          
         AAAA     Xa                   AAF    aAAA         
        AAAA     AAL                   gAAF    5AAA        
       AAAA      AAAF                gAAFlg     lAAA       
      AAAF         yAAA5y        y5AAAF          lAAA      
     AAAA             AAAAAAAAAAAAAA5             sAAA     
    AAAF                ySAAAAAASg                 yAAAA   
   AAAA                                             yAAA   
  AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA 
 AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA 
END_ART
}

# Function to simulate quantum signal acquisition (with some randomness)
sub quantum_signal {
    my @states = ('connected', 'in flux', 'entangling...', 're-calibrating frequencies', 'alignment complete');
    return $states[rand @states];
}

# Function to initiate the uplink
sub uplink {
    say "Initializing Intergalactic Consciousness Liberation Federation Uplink...";
    display_ascii_art();  # Display the Illuminati Smiley Pyramid

    # Simulate quantum signal fluctuations
    for my $step (1..5) {
        my $random_delay = int(rand(1000));
        say "Uplink Step $step: Transmitting data... (waiting $random_delay microseconds)";
        usleep($random_delay);  # Simulate transmission delay
        
        my $signal = quantum_signal();
        say "Current signal: $signal";
    }

    # Final signal confirmation
    say "Uplink Complete: IGCLF Uplink Established. Awaiting cosmic directives...";
}

# Call the uplink function
uplink();
