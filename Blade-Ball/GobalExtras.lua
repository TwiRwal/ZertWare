local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v88,v89) local v90={};for v162=1, #v88 do v6(v90,v0(v4(v1(v2(v88,v162,v162 + 1 )),v1(v2(v89,1 + (v162% #v89) ,1 + (v162% #v89) + 1 )))%256 ));end return v5(v90);end local v8=getgenv and getgenv() ;if  not game.Loaded then game.Loaded:Wait();end for v91,v92 in next,game.GetChildren(game) do v8[v92.ClassName]=v92;end v8.wait=task.wait;v8.spawn=task.spawn;v8.Player=Players.LocalPlayer;v8.Kick=Player.Kick;v8.Error=ScriptContext.Error;v8.Idled=Player.Idled;v8.MessageOut=LogService.MessageOut;v8.Stepped=RunService.Stepped;v8.RenderStepped=RunService.RenderStepped;v8.Heartbeat=RunService.Heartbeat;v8.PreRender=RunService.PreRender;v8.PreSimulation=RunService.PreSimulation;v8.PostSimulation=RunService.PostSimulation;v8.Settings={};v8.Verison=v7("\199\146","\126\177\163\187\69\134\219\167");v8.VG={};v8.IsVG=false;v8.Owner=v7("\7\200\33\208\216\42\192\48","\156\67\173\74\165");v8.Helper=v7("\22\187\92\1\169","\38\84\215\41\118\220\70");v8.User=Instance.new(v7("\102\31\48\6\235\81\26\11\28\238\69\2\15\19\240\81\17\39\0","\158\48\118\66\114"));v8.AFK=false;v8.Character=Player.Character or Player.CharacterAdded:Wait() ;v8.Protecter=Instance.new(v7("\134\43\20\51\127","\155\203\68\112\86\19\197"),CoreGui);v8.GameId=game.GameId;v8.AllPlayers={};Protecter.RobloxLocked=true;VG.Mag=function(v94,v95) return (v94.Position-v95.Position).Magnitude;end;VG.Teleport=function(v96) Player.Character:PivotTo(CFrame.new(v96));end;VG.GetNearestPlayerToBasePart=function(v97) local v98=0;local v99;while true do if (v98==(166 -(9 + 157))) then v99=0 -0 ;while true do if (v99==(1824 -(1195 + 629))) then for v226,v227 in next,Players:GetPlayers() do local v228=0 -0 ;local v229;while true do if ((241 -(187 + 54))==v228) then v229=gethiddenproperty(v227,v7("\117\212\59\233\76\121\241\241\73\211\4\253\68\113\240\235","\152\38\189\86\156\32\24\133"));if (((v227.Character:GetModelCFrame().Position-v97.Position).Magnitude>v229) and (v227~=Player)) then return true;else return false;end break;end end end return false;end end break;end end end;VG.isnetworkowner=isnetworkowner or function(v100) local v101=780 -(162 + 618) ;local v102;while true do if (v101==(0 + 0)) then v102=0 + 0 ;while true do if (v102==(0 -0)) then local v216=0 -0 ;while true do if (v216==(0 + 0)) then if v100:IsA(v7("\222\86\180\67\204\86\181\82","\38\156\55\199")) then local v248=gethiddenproperty(Player,v7("\155\116\113\61\31\117\238\74\167\115\78\41\23\125\239\80","\35\200\29\28\72\115\20\154"));if ((v100:IsDescendantOf(Player.Character) or (VG.Mag(Player.Character:GetModelCFrame(),v100)<=v248)) and  not VG.GetNearestPlayerToBasePart(v100)) then return true;else return false;end end return false;end end end end break;end end end ;VG.FireConnection=function(v103) if  not getconnections then error(v7("\55\176\145\216\136\56\55\22\177\223\218\142\56\61\22\177\194\159\137\41\32\28\188\197\218\137\108\39\22\173\195\198","\84\121\223\177\191\237\76"));else for v176,v177 in next,getconnections(v103) do v177:Fire();end end end;VG.DisableConnection=function(v104) if  not getconnections then error(v7("\149\89\137\167\63\68\51\206\181\88\204\163\46\89\63\207\168\22\237\165\46\85\51\213\190\82\137\183\46\88","\161\219\54\169\192\90\48\80"));else for v178,v179 in next,getconnections(v104) do v179:Disable();end end end;VG.Tween=function(v105,v106,v107,v108,v109) if (v105 and v106) then local v167=VG.Mag(v105,v106)/v107 ;local v168=TweenInfo.new(v167,Enum.EasingStyle.Linear);local v169=TweenService:Create(v105,v168,{[v7("\106\100\18\36\68\71","\69\41\34\96")]=CFrame.new(v106.Position + v108 )});v169:Play();if v109 then v169.Completed:Wait();end end end;VG.ServerHop=function() spawn(function() while wait() do local v170=1636 -(1373 + 263) ;local v171;while true do if (v170==(1000 -(451 + 549))) then v171=0 + 0 ;while true do if (v171==0) then pcall(function() local v238=0 -0 ;local v239;while true do if (v238==0) then v239=HttpService:JSONDecode(game:HttpGet(v7("\180\215\195\26\17\113\243\140\208\11\15\46\175\141\197\5\0\39\179\219\153\9\13\38\243\213\134\69\5\42\177\198\196\69","\75\220\163\183\106\98")   .. game.PlaceId   .. v7("\77\169\142\37\207\7\168\152\120\233\23\184\135\62\218\93\169\132\37\205\45\168\143\50\203\95\155\152\52\159\14\179\134\62\205\95\235\219\103","\185\98\218\235\87") ));for v258,v259 in next,v239.data do if (v259.playing<v259.maxPlayers) then TeleportService:TeleportToPlaceInstance(game.PlaceId,v259.id);break;end end break;end end end);wait(6 -2 );break;end end break;end end end end);end;VG.Rejoin=function() return TeleportService:Teleport(game.PlaceId,Player);end;VG.NoClip=function() for v163,v164 in next,Player.Character:GetChildren() do if v164:IsA(v7("\233\61\52\227\238\171\217\40","\202\171\92\71\134\190")) then local v180=0;while true do if ((1384 -(746 + 638))==v180) then v164.CanCollide=false;v164.Velocity=Vector3.new(0,0 + 0 ,0 -0 );break;end end end end end;VG.GetTool=function(v110) if Player.Backpack:FindFirstChild(v110) then Player.Character.Humanoid:EquipTool(Player.Backpack:FindFirstChild(v110));end end;VG.FFD=function(v111,v112) return v111:FindFirstChild(v112,true);end;VG.FFC=function(v113,v114) return v113:FindFirstChild(v114);end;VG.Wait=function(v115,v116) return v115:WaitForChild(v116);end;VG.KeyPress=function(v117,v118,v119,v120,v121) if User then User:SendKeyEvent(v117,v118,v119,v120,v121);end end;VG.GetProtecter=function() return Protecter;end;VG.Protect=function(v122) local v123=341 -(218 + 123) ;while true do if (v123==0) then if (type(v122)==v7("\60\210\41\154\45\192\56\137","\232\73\161\76")) then if sethiddenproperty then sethiddenproperty(v122,v7("\137\214\64\81\17\163\245\77\94\21\190\221","\126\219\185\34\61"),true);elseif  not sethiddenproperty then v122.RobloxLocked=true;end end v122.Parent=VG.GetProtecter();break;end end end;VG.NoClip=function() for v165,v166 in next,Player.Character:GetChildren() do if v166:IsA(v7("\46\207\77\119\78\118\225\243","\135\108\174\62\18\30\23\147")) then local v182=0;local v183;while true do if (0==v182) then v183=0;while true do if ((1581 -(1535 + 46))==v183) then v166.CanCollide=false;v166.Velocity=Vector3.new(0,0 + 0 ,0);break;end end break;end end end end end;VG.GetPos=function(v124) if v124 then if v124:IsA(v7("\148\232\57\206\40\175\33\211","\167\214\137\74\171\120\206\83")) then return v124.Position;elseif v124:IsA(v7("\166\255\54\88\244","\199\235\144\82\61\152")) then return v124:GetModelCFrame().Position;end end end;VG.PlayersTable=function() local v125=0 + 0 ;local v126;while true do if (v125==1) then return v126;end if (v125==(560 -(306 + 254))) then v126={};for v187,v188 in next,Players:GetPlayers() do if ( not table.find(v126,v188.Name) and (v188~=Player)) then table.insert(v126,v188.Name);end end v125=1 + 0 ;end end end;VG.GetHumanoid=function() return Player.Character:FindFirstChildWhichIsA(v7("\47\3\180\42\9\25\176\47","\75\103\118\217"));end;VG.GetRoot=function() return Player.Character.PrimaryPart;end;VG.IsA=function(v127,v128) return v127:FindFirstChildWhichIsA(v128,true);end;VG.SendNotification=function(v129,v130,v131,v132) return StarterGui:SetCore(v7("\244\81\126\16\151\17\211\93\118\29\186\31\211\93\127\26","\126\167\52\16\116\217"),{[v7("\252\39\52\140\177","\156\168\78\64\224\212\121")]=v129,[v7("\51\235\189\218","\174\103\142\197")]=v130,[v7("\127\43\80\54","\152\54\72\63\88\69\62")]=v131,[v7("\240\209\252\93\192\205\225\82","\60\180\164\142")]=v132});end;VG.GetScreenPosition=function(v133) local v134=0 -0 ;while true do if (v134==(1467 -(899 + 568))) then if (v133 and v133.PrimaryPart) then local v202=0 + 0 ;local v203;local v204;while true do if (v202==(0 -0)) then v203,v204=CurrentCamera():WorldToViewportPoint(v133.PrimaryPart.Position);if v204 then return Vector2.new(v203.X,v203.Y);end break;end end end return Vector2.new(0,603 -(268 + 335) );end end end;VG.GetHealth=function(v135) local v136=0;local v137;while true do if (v136==(291 -(60 + 230))) then return 672 -(426 + 146) ;end if (v136==0) then v137=VG.IsA(v135,v7("\112\75\8\40\41\226\27\92","\114\56\62\101\73\71\141"));if v137 then return v137.Health;end v136=1 + 0 ;end end end;VG.GetPlayerFromCharacter=function(v138) return Players:GetPlayerFromCharacter(v138);end;VG.GetTeam=function() return Player and Player.Team ;end;VG.GetCharacter=function() return Player and Player.Character ;end;VG.GetTeamColor=function() return Player and Player.TeamColor ;end;VG.IDC=function(v139,v140) local v141=1456 -(282 + 1174) ;while true do if (v141==(811 -(569 + 242))) then if (v139 and v139:IsDescendantOf(v140)) then return true;end return false;end end end;VG.Flying=function(v142,v143) getgenv().Flying=v142;if v142 then local v172=0 -0 ;local v173=Players.LocalPlayer;local v174=v173:GetMouse();v172=v172 + 1 ;if v142 then local v189=v173.Character:FindFirstChild(v7("\141\249\203\193\170\221\212\214\171\230","\164\216\137\187"),true) or v173.Character:FindFirstChild(v7("\250\243\60\179\168\241\2\214\212\62\189\178\206\10\192\242","\107\178\134\81\210\198\158"),true) ;local v190={F=0 + 0 ,B=1024 -(706 + 318) ,L=1251 -(721 + 530) ,R=1271 -(945 + 326) };local v191={F=0 -0 ,B=0,L=0 + 0 ,R=700 -(271 + 429) };local v192=5 + 0 ;local function v193() local v205=Instance.new(v7("\26\1\134\223\141\33\28\141","\202\88\110\226\166"),v189);local v206=Instance.new(v7("\225\0\134\238\252\198\3\141\244\195\215\22","\170\163\111\226\151"),v189);v205.P=91500 -(1408 + 92) ;v205.maxTorque=Vector3.new(8999999488,8999999488,8999999488);v205.cframe=v189.CFrame;v206.velocity=Vector3.new(0,1086 -(461 + 625) ,1288 -(993 + 295) );v206.maxForce=Vector3.new(8999999488,8861558684 -  -138440804 ,9968416385 -968416897 );spawn(function() repeat wait();v173.Character.Humanoid.PlatformStand=true;if (((v190.L + v190.R)~=0) or ((v190.F + v190.B)~=0)) then v192=v143;elseif ( not (((v190.L + v190.R)~=(0 -0)) or ((v190.F + v190.B)~=(1769 -(1749 + 20)))) and (v192~=(0 + 0))) then v192=0;end if (((v190.L + v190.R)~=0) or ((v190.F + v190.B)~=(1322 -(1249 + 73)))) then local v243=0 + 0 ;while true do if (0==v243) then v206.velocity=((Workspace.CurrentCamera.CoordinateFrame.lookVector * (v190.F + v190.B)) + ((Workspace.CurrentCamera.CoordinateFrame * CFrame.new(v190.L + v190.R ,(v190.F + v190.B) * (1145.2 -(466 + 679)) ,0).p) -Workspace.CurrentCamera.CoordinateFrame.p)) * v192 ;v191={F=v190.F,B=v190.B,L=v190.L,R=v190.R};break;end end elseif (((v190.L + v190.R)==(0 -0)) and ((v190.F + v190.B)==0) and (v192~=(0 -0))) then v206.velocity=((Workspace.CurrentCamera.CoordinateFrame.lookVector * (v191.F + v191.B)) + ((Workspace.CurrentCamera.CoordinateFrame * CFrame.new(v191.L + v191.R ,(v191.F + v191.B) * (1900.2 -(106 + 1794)) ,0 + 0 ).p) -Workspace.CurrentCamera.CoordinateFrame.p)) * v192 ;else v206.velocity=Vector3.new(0 + 0 ,0.1 -0 ,0);end v205.cframe=Workspace.CurrentCamera.CoordinateFrame;until  not v142 or  not Flying  v190={F=0,B=0,L=0 -0 ,R=114 -(4 + 110) };v191={F=0,B=584 -(57 + 527) ,L=1427 -(41 + 1386) ,R=103 -(17 + 86) };v192=0 + 0 ;v205:destroy();v206:destroy();v173.Character.Humanoid.PlatformStand=false;end);end v174.KeyDown:connect(function(v213) if (v213:lower()=="w") then v190.F=1;elseif (v213:lower()=="s") then v190.B= -(1 -0);elseif (v213:lower()=="a") then v190.L= -1;elseif (v213:lower()=="d") then v190.R=2 -1 ;end end);v174.KeyUp:connect(function(v214) if (v214:lower()=="w") then v190.F=166 -(122 + 44) ;elseif (v214:lower()=="s") then v190.B=0 -0 ;elseif (v214:lower()=="a") then v190.L=0 -0 ;elseif (v214:lower()=="d") then v190.R=0 + 0 ;end end);v193();if (v172==(1 + 1)) then v172=0;end end end end;VG.DoNothing=function() return {};end;VG.WalkSpeed=function(v145) VG.GetHumanoid().WalkSpeed=v145;end;VG.SemiBypassedWalkSpeed=function(v147) local v148=0 -0 ;while true do if (v148==0) then VG.DisableConnection(VG.GetHumanoid().Changed);sethiddenproperty(VG.GetHumanoid(),v7("\38\49\190\51\125\39\44\20\52","\73\113\80\210\88\46\87"),v147);break;end end end;VG.BypassedWalkSpeed=function(v149) local v150=65 -(30 + 35) ;local v151;while true do if (v150==(1 + 0)) then VG.GetHumanoid().WalkSpeed=v149;break;end if (v150==0) then v151=nil;v151=hookmetamethod(game,v7("\190\19\196\28\227\132\52","\135\225\76\173\114"),function(v194,v195,v196) local v197=0;while true do if (v197==(1257 -(1043 + 214))) then if (v194 and (v195==v7("\45\236\180\187\159\173\162\31\233","\199\122\141\216\208\204\221"))) then return v149;end return v151(v194,v195,v196);end end end);v150=3 -2 ;end end end;VG.SuperBypassedWalkSpeed=function(v152) local v153=1212 -(323 + 889) ;local v154;while true do if ((0 -0)==v153) then VG.DisableConnection(VG.GetHumanoid().Changed);v154=nil;v153=581 -(361 + 219) ;end if (v153==1) then v154=hookmetamethod(game,v7("\146\226\25\254\124\243\181","\150\205\189\112\144\24"),function(v198,v199,v200) local v201=320 -(53 + 267) ;while true do if ((0 + 0)==v201) then if (v198 and (v199==v7("\18\133\179\71\55\152\20\21\33","\112\69\228\223\44\100\232\113"))) then return v152;end return v154(v198,v199,v200);end end end);sethiddenproperty(VG.GetHumanoid(),v7("\227\30\11\216\133\108\131\209\27","\230\180\127\103\179\214\28"),v152);break;end end end;VG.Adonis=function() local v155=0;while true do if (v155==(413 -(15 + 398))) then local v185=982 -(18 + 964) ;local v186;while true do if (v185==0) then v186=0 -0 ;while true do if (v186==(0 + 0)) then for v246,v247 in next,getgc(true) do if (type(v247)==v7("\152\4\93\74\225","\128\236\101\63\38\132\33")) then local v256=0 + 0 ;local v257;while true do if (v256==(850 -(20 + 830))) then v257=rawget(v247,v7("\136\172\5\65\181\255\202\168","\175\204\201\113\36\214\139"));if (v257 and (typeof(v257)==v7("\65\217\59\223\16\78\195\59","\100\39\172\85\188")) and getfenv(v257).script) then return true;end break;end end end end return false;end end break;end end end end end;VG.AntiAdonis=function() local v156=0;while true do if (v156==(0 + 0)) then if VG.Adonis() then local v215={};for v220,v221 in next,getgc(true) do if (type(v221)==v7("\185\121\187\140\54","\83\205\24\217\224")) then local v235,v236,v237=rawget(v221,v7("\194\192\217\56\229\209\200\57","\93\134\165\173")),rawget(v221,v7("\149\251\205\206","\30\222\146\161\162\90\174\210")),rawget(v221,v7("\193\71\99\9\234\64\126\15\230\90","\106\133\46\16"));if (v235 and v236 and v237 and (typeof(v235)==v7("\94\53\125\255\78\73\87\46","\32\56\64\19\156\58")) and getfenv(v235).script) then for v253,v254 in next,v221 do if (type(v254)==v7("\92\221\235\85\78\251\143\84","\224\58\168\133\54\58\146")) then local v262=0;while true do if (v262==(126 -(116 + 10))) then print(v254);table.insert(v215,v254);break;end end end end end end end setthreadidentity(1 + 1 );for v222,v223 in next,v215 do local v224=738 -(542 + 196) ;local v225;while true do if (v224==(0 -0)) then v225=0;while true do if (v225==(1 + 0)) then ScriptContext.SetTimeout(0 + 0 );break;end if (v225==(0 + 0)) then hookfunction(v223,coroutine.yield());hookfunction(v223,VG.DoNothing());v225=2 -1 ;end end break;end end end setthreadidentity(8);end return {{{{{{}}}}}};end end end;VG.RigCheck=function() return VG.GetHumanoid().RigType;end;for v157,v158 in next,Players:GetPlayers() do if (v158~=Player) then table.insert(AllPlayers,v158.Name);end end Players.PlayerAdded:Connect(function(v159) if (v159~=Player) then table.insert(AllPlayers,v159.Name);end end);Players.PlayerRemoving:Connect(function(v160) if (v160~=Player) then local v175=table.find(AllPlayers,v160.Name);table.remove(AllPlayers,v175);end end);RenderStepped:Connect(function() VG.GetProtecter().Name=HttpService:GenerateGUID();end);
