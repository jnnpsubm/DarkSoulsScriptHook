
--Create generic helper functions
function generateWriteInt(base, offset)
	return function(data)
		ds2:writeInt(base, offset, data)
	end
end

function generateReadInt(base, offset)
	return function()
		return ds2:readInt(base, offset, data)
	end
end

function generateWriteShort(base, offset)
	return function(data)
		ds2:writeShort(base, offset, data)
	end
end

function generateReadShort(base, offset)
	return function()
		return ds2:readShort(base, offset, data)
	end
end

function ds2:writeBytes(offset, ...)
	local arg={...}
	for i,v in ipairs(arg) do
		print("writing " .. i )
    	ds2:writeByte(ds2:baseAddress(), offset + i - 1, v)
    end
end

--include neccessary files
dofile("scripts\\darksouls2\\player.lua")
dofile("scripts\\darksouls2\\inventory.lua")
dofile("scripts\\darksouls2\\items.lua")
dofile("scripts\\darksouls2\\input.lua")