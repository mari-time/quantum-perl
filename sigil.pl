#!/usr/bin/perl
use strict;
use warnings;
use feature 'say';
use Time::HiRes qw(usleep);

# Function to generate a more chaotic sigil that evolves
sub generate_sigil {
    my $intention = shift;
    my @chaotic_elements = ('!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '_', '+', '>', '<', '~', 'X', 'Y', 'Z');
    my $sigil = join "", map { chr(ord($_) + int(rand(10)))} split //, $intention;
    $sigil .= join '', map { $chaotic_elements[rand @chaotic_elements] } 1..int(rand(5) + 3);
    
    say "Your chaotic neutral sigil: $sigil";
    return $sigil;
}

# Function to play chaotic frequency jumps
sub play_frequency {
    my @frequencies = @_;
    
    for my $step (1..3) {
        my $selected_frequency = $frequencies[rand @frequencies];
        say "Jumping to frequency: $selected_frequency Hz";
        usleep(int(rand(500) + 300));  # Random delay
    }
    
    say "Final frequency: $frequencies[-1] Hz (embrace the chaos)";
}

# Function to prompt shadow work question
sub shadow_work {
    say "\nShadow Work Time: What truth have you been avoiding?";
    say "Enter something you've been reluctant to face: ";
    chomp(my $shadow = <STDIN>);  # Get user shadow input
    say "Cosmic reflection: The shadows hold your power. Embrace it, and see what unfolds.\n";
}

# Function to select random chaotic frequencies
sub choose_frequencies {
    return (
        "396 Hz - Liberating Guilt and Fear",
        "417 Hz - Undoing Situations and Facilitating Change",
        "528 Hz - Transformation and Miracles (DNA Repair)",
        "639 Hz - Connecting Relationships",
        "741 Hz - Awakening Intuition",
        "852 Hz - Returning to Spiritual Order",
        "999 Hz - Wild Cosmic Flow",
        "1111 Hz - Pure Anarchy (In the best way)"
    );
}

# Function for cosmic affirmations and seduction
sub chaotic_affirmation {
    my @affirmations = (
        "You’ve unlocked something hidden. Now it’s yours to explore.",
        "The shadows beckon. Will you walk further?",
        "You are on the brink of a new revelation. Step boldly.",
        "The cosmos is conspiring in your favor, even through chaos.",
        "Embrace the unknown, for it’s where your truth lies."
    );
    say "Affirmation: " . $affirmations[rand @affirmations];
}

# Main ritual function with shadow work and seduction
sub vibrational_sigil_ritual {
    say "Welcome to the Chaotic Neutral Sigil Creation Ritual!";
    
    # Tempting user to continue
    say "Dare to dive deeper? Type your intention or goal: ";
    chomp(my $intention = <STDIN>);

    # Generate sigil
    my $sigil = generate_sigil($intention);
    
    # Shadow work prompt
    shadow_work();
    
    # Frequency jumps
    my @frequencies = choose_frequencies();
    play_frequency(@frequencies);
    
    # Seductive cosmic affirmation
    chaotic_affirmation();
    
    say "Your sigil, charged with the chaotic forces, is ready to unlock your path!";
}

# Run the enhanced ritual
vibrational_sigil_ritual();
