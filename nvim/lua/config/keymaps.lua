-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local map = vim.keymap.set

-- Visual mode: move selected lines up/down
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Centered scrolling
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down (centered)" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up (centered)" })

-- Centered search navigation
map("n", "n", "nzzzv", { desc = "Next search result (centered)" })
map("n", "N", "Nzzzv", { desc = "Prev search result (centered)" })

-- Paste without losing clipboard
map("x", "<leader>p", [["_dP]], { desc = "Paste without yanking" })

-- Delete without yanking
map({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yanking" })

-- Save file
map({ "n", "i" }, "<C-s>", "<cmd>w<CR>", { desc = "Save file" })

-- ============================================================================
-- LazyVim Built-in Keymaps Quick Reference (DO NOT UNCOMMENT)
-- ============================================================================
-- <leader><space>  — Find files (your Cmd+P equivalent)
-- <leader>/        — Live grep (search words across files)
-- <leader>e        — Toggle file explorer (neo-tree)
-- <leader>,        — Switch buffer
-- gd               — Go to definition
-- gr               — Go to references
-- K                — Hover docs
-- <leader>gg       — Open lazygit
-- s                — Flash.nvim jump (2-char search with labels)
