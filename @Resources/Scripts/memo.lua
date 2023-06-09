function getStrByBoolean(bool)
	if(bool == true)
	then
		return "已領取"
	end
	return "未領取"
	
end

function prettyTime(seconds)
  local seconds = tonumber(seconds)

  if seconds <= 0 then
    return "閒置";
  else
    local days = string.format("%01.f", math.floor(seconds/86400));
    local hours = string.format("%02.f", math.floor(seconds/3600));
    local hoursX = string.format("%02.f", math.floor(seconds/3600 - days*24));
    local mins = string.format("%02.f", math.floor(seconds/60 - (hours*60)));
    local secs = string.format("%02.f", math.floor(seconds - hours*3600 - mins *60));
	
	if(tonumber(hours) > 23)
	then
		return days.."d "..hoursX..":"..mins
	else 
		return hours..":"..mins
	end
  end
end

function prettyTimeX(seconds)
  local seconds = tonumber(seconds)

  if seconds <= 0 then
    return "閒置";
  else
    local days = string.format("%01.f", math.floor(seconds/86400));
    local hours = string.format("%02.f", math.floor(seconds/3600));
    local mins = string.format("%02.f", math.floor(seconds/60 - (hours*60)));
    local secs = string.format("%02.f", math.floor(seconds - hours*3600 - mins *60));
	
	
	if(tonumber(hours) > 23)
	then
		return days.."d"
	elseif(tonumber(hours) > 1) then
		return hours.."h"
	elseif(tonumber(mins) > 1) then
		return mins.."m"
	elseif(tonumber(secs) > 0) then
		return secs.."s"
	end
  end
end

function getCharByName(name)
	local str = string.lower(name);
	str = str:gsub("% ","_");
  return str .. "_ico.png";
end