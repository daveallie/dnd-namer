# DnD Namer

DnD Namer is a random item and Heroku-ish name generator that uses D&D classes and races.

## Installation

Add this line to your application's Gemfile:

    gem 'dnd-namer', :git => 'https://github.com/daveallie/dnd-namer.git', :tag => '0.0.1'

And then execute:

    $ bundle

## Usage

    DndNamer.object
    => "Dirty cleric"
    => "Unusual monk"
    => "Slippery gnome"

    DndNamer.super_object
    => "Unwavering harpy"
    => "Tranquil wizard"
    => "Exuberant human"

    DndNamer.heroku
    => "inquisitive-teifling-6617"
    => "jubilant-shifter-9301"
    => "frightened-bard-4542"

    DndNamer.adj
    => "Colossal"
    DndNamer.race_class
    => "Genasi"
    DndNamer.super_adj
    => "Limitless"
