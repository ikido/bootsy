require 'carrierwave'
require 'remotipart'
require 'bootsy/engine'
require 'bootsy/container'
require 'bootsy/form_helper'
require 'bootsy/form_builder'
require 'bootsy/core_ext'

module Bootsy
  ## CONFIGURATION OPTIONS

  # Image versions available
  mattr_accessor :image_versions_available
  @@image_versions_available = [:small, :medium, :large, :original]

  # Whether user can destroy uploaded files
  mattr_accessor :allow_destroy
  @@allow_destroy = true

  # Settings for small images
  mattr_accessor :small_image
  @@small_image = {width: 160, height: 160}

  # Settings for medium images
  mattr_accessor :medium_image
  @@medium_image = {width: 360, height: 360}

  # Settings for large images
  mattr_accessor :large_image
  @@large_image = {width: 760, height: 760}

  # Settings for the original version of images
  mattr_accessor :original_image
  @@original_image = {}

  # Store directory (inside of 'public')
  mattr_accessor :store_dir
  @@store_dir = 'uploads'
  
  # Storage for images
  mattr_accessor :storage
  @@storage = :file


  ## SETUP

  # Default way to setup Bootsy. Run rails generate bootsy:install
  # to create a fresh initializer with all configuration values.
  def self.setup
    yield self
  end
end
