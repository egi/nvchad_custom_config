-- This is where you custom modules and plugins goes.
-- See the wiki for a guide on how to extend NvChad

-- NOTE: we heavily suggest using Packer's lazy loading (with the 'event','cmd' fields)
-- see: https://github.com/wbthomason/packer.nvim
-- https://nvchad.github.io/config/walkthrough

vim.g.mapleader = "\\"

-- require "custom.plugins.mkdir"
require "custom.autocmds"
