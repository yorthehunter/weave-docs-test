##Weave
Stitch Fix design, functionality, and pragmatism rolled into one.

Check out the Weave Style Guide at:
https://stitchfix.github.io/weave-styleguide://stitchfix.github.io/weave-styleguide/

-----

## What's Here?
This is the home of the code that manages Weave. It's the Single Source of Truth™ for all things that are a part of the Weave Design System.

## How Do I Set Up Weave?
### Rails
You should have your [Gemfury setup](https://github.com/stitchfix/eng-wiki/blob/master/onboarding/local_development_setup.md#set-up-gemfury-access)

Add to your `Gemfile`:

```ruby
source "https://gem.fury.io/me/" do
  gem 'stitchfix-weave', :require => 'stitch_fix/weave'
end
```
Then in your `{my_application}/app/assets/stylesheets/applicaiton.scss` file you can add:
```ruby
@import "weave";
```

### Bower
Add to your `Bowerfile` (if using the [bower-rails gem](https://github.com/rharriso/bower-rails):
(Should be modified based on version tag wanted)
```ruby
asset 'weave', 'git@github.com:stitchfix/weave/#0.1.0'
```

This should place all files under `vendor/bower_components/weave`. From here you should be able to include any files you need through the asset pipeline paths (for Rails) or Angular loading mechanims.

## How Do I Apply Weave to my UI Problem)?
### Step 1
Read the [Weave documentation](https://github.com/stitchfix/weave-styleguide): Is my problem solved by Weave?

### Step 2
- If **YES**, then use the code provided in the documentation.
- If **NO**, then consult your closest UX representative for advice on how to proceed.

### Step 3
If your problem is **only** solved by UI that doesn't currently exist in the Weave design system, work with UX on the possibility to add your UI feature into the code base.

## Other Resources
- [Weave Principles](https://github.com/stitchfix/weave-styleguide/wiki/Principles)
- [Weave UI Components Sketch File](https://stitchfix.box.com/s/7cf12z8ceultnklbkubwbrbzfk40jjgv)# To use

## Development Notes
### Ruby Gem
This was created using the [StitchFix Y](https://github.com/stitchfix/y) gem generator, and therefore you can use its handy tasks for releasing and bumping up versions of the gem.

This is an "assets" only gem at the moment i.e. only css, scss, js, etc. The gem is slighlty modified so that it's `Engine` will serve files into the asset pipeline of the host app from not just the typical "asset" paths e.g. `app/assets/stylesheets`, but also from the root `scss` folder of this gem.


### Local Environment Setup

{{ TO DO: Create local testing application... }}
