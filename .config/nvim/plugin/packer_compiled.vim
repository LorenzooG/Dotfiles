" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time("Luarocks path setup", true)
local package_path_str = "/home/lorenzog/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/lorenzog/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/lorenzog/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/lorenzog/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/lorenzog/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  ["agda-vim"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/agda-vim"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["compe-tabnine"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/compe-tabnine"
  },
  conjure = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/conjure"
  },
  ["eva01.vim"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/eva01.vim"
  },
  ["fennel-nvim"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/fennel-nvim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["haskell-vim"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/haskell-vim"
  },
  ["idris-vim"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/idris-vim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim"
  },
  ["lsp-trouble.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/lsp-trouble.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["neoscroll.nvim"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/neoscroll.nvim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/nerdcommenter"
  },
  ["nvim-bufferline.lua"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lsputils"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/nvim-lsputils"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  popfix = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/popfix"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["sitruuna.vim"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/sitruuna.vim"
  },
  sniprun = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/sniprun"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-codefmt"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/vim-codefmt"
  },
  ["vim-colors-xcode"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/vim-colors-xcode"
  },
  ["vim-glaive"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/vim-glaive"
  },
  ["vim-koka"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/vim-koka"
  },
  ["vim-llvm"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/vim-llvm"
  },
  ["vim-maktaba"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/vim-maktaba"
  },
  ["vim-rescript"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/vim-rescript"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-styled-components"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/vim-styled-components"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/vim-wakatime"
  },
  ["vim-wordmotion"] = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/vim-wordmotion"
  },
  vimsence = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/vimsence"
  },
  vimspector = {
    loaded = true,
    path = "/home/lorenzog/.local/share/nvim/site/pack/packer/start/vimspector"
  }
}

time("Defining packer_plugins", false)
-- Config for: lsp-trouble.nvim
time("Config for lsp-trouble.nvim", true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "lsp-trouble.nvim")
time("Config for lsp-trouble.nvim", false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
