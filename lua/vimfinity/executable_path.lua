-- Finds and returns C/C++ executable path.
local M = {}

-- TODO: Ask for an executable path if the following does not exist!
M.find = function()
  local current_work_dir = vim.fn.getcwd()
  local executable_path1 = current_work_dir .. "/a.out"
  local executable_path2 = current_work_dir .. "/build/a.out"

  if vim.fn.filereadable(executable_path1) == 1 then
    return executable_path1
  else
    return executable_path2
  end
end

return M
