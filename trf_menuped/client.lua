ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(5000)
    end

    ESX.PlayerData = ESX.GetPlayerData()
end)

function KeyboardInput(TextEntry, ExampleText, MaxStringLength)
    AddTextEntry('FMMC_KEY_TIP1', TextEntry .. '')
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
    blockinput = true
    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do Citizen.Wait(0) end
    if UpdateOnscreenKeyboard() ~= 2 then local result = GetOnscreenKeyboardResult() Citizen.Wait(500) blockinput = false return result
    else Citizen.Wait(500) blockinput = false return nil
    end
end

function createped(hash)
    RequestModel(hash)
    while not HasModelLoaded(hash) do 
        Wait(0) 
    end
    SetPlayerModel(PlayerId(), hash)
    SetModelAsNoLongerNeeded(hash)
end


function menu()


    
    local menuped = RageUI.CreateMenu("Menu Ped","Menu Ped")



    local Menu = {
        gang = {
            "Families 1",
            "Families 2",
            "Ballas 1",
            "Ballas 2",
            "Ballas 3",
            "Vagos 1",
            "Vagos 2",
            "Vagos 3",
            "Biker 1",
            "Biker 2",
            "Biker 3",
            "Marabunta 1",
            "Marabunta 2",
            "Marabunta 3",
            "Cartel 1",
            "Cartel 2",
            "Cartel 3",
            "Cartel 4",
            "Cartel 5"
        },

        animal = {
            "Chien",
            "Cochon",
            "Pigeon",
            "Rat",
            "Chat"


        },
    
        list = 1,
    }

    local Menu2 = {

        animal = {
            "Chien",
            "Cochon",
            "Pigeon",
            "Rat",
            "Chat",
            "Aigle",
            "Singe",
            "Poisson",
            "coyote",
            "Vache",
            "Cerf",
            "Corbeau",
            "Sanglier",
            "lion"


        },


        list = 1,


    }

    local Menu3 = {

        lspd = {
            "lspd femme",
            "lspd 1",
            "lspd 2"

        },
        list = 1,

    }

    local Menu4 = {

        ems = {
            "Ems 1",
            "Ems 2",
            "Ems 3",
            "Ems 4"

        },
        list = 1,

    }

    local Menu5 = {

        autre = {
            "Black ops",
            "Clown",
            "Cosmonaute",
            "camionneur",
            "Costume",
            "Prisonnier 1",
            "Prisonnier 2",
            "pnj 1",
            "pnj 2",
            "Lester",
            "Pretre",
            "Coach Tennis",
            "Grosse tete",
            "je sais pas",
            "buzz l'éclair de wish",
            "mani",
            "porage",
            "Mexicain des plages",
            "cirque man",
            "Secretaire",
            "Tony Price"



        },
        list = 1,

    }

    local Menu6 = {

        gta = {
            "Franklin",
            "Michael",
            "Trevor",




        },
        list = 1,

    }









    RageUI.Visible(menuped, not RageUI.Visible(menuped))

    while menuped do
        
        Citizen.Wait(0)

        RageUI.IsVisible(menuped,true,true,true,function()

            RageUI.Separator("____________________")

            RageUI.ButtonWithStyle("Reprendre son apparence", "Pour se remettre en normal", {RightLabel = ""}, true, function(Hovered, Active, Selected)
                if (Selected) then   
                ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
                    local isMale = skin.sex == 0


                    TriggerEvent('skinchanger:loadDefaultModel', isMale, function()
                        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                            TriggerEvent('skinchanger:loadSkin', skin)
                            TriggerEvent('esx:restoreLoadout')
                    end)
                    end)
                    end)
            end
            end)





            RageUI.List('Gang', Menu.gang, Menu.list, nil, {}, true, function(Hovered, Active, Selected, Index)
                if (Active) then
                    if Selected then
                        if Index == 1 then
                            createped(GetHashKey('g_m_y_famca_01'))
                        elseif Index == 2 then
                            createped(GetHashKey('g_m_y_famdnf_01'))
                        elseif Index == 3 then
                            createped(GetHashKey('g_m_y_ballaeast_01'))
                        elseif Index == 4 then
                            createped(GetHashKey('g_m_y_ballaorig_01'))
                        elseif Index == 5 then
                            createped(GetHashKey('g_m_y_ballasout_01'))
                        elseif Index == 6 then
                            createped(GetHashKey('g_m_y_mexgoon_01'))
                        elseif Index == 7 then
                            createped(GetHashKey('g_m_y_mexgoon_02'))
                        elseif Index == 8 then
                            createped(GetHashKey('g_m_y_mexgoon_03'))
                        elseif Index == 9 then
                            createped(GetHashKey('g_m_y_lost_01'))
                        elseif Index == 10 then
                            createped(GetHashKey('g_m_y_lost_02'))
                        elseif Index == 11 then
                            createped(GetHashKey('g_m_y_lost_03'))
                        elseif Index == 12 then
                            createped(GetHashKey('g_m_y_salvaboss_01'))
                        elseif Index == 13 then
                            createped(GetHashKey('g_m_y_salvagoon_01'))
                        elseif Index == 14 then
                            createped(GetHashKey('g_m_y_salvagoon_02'))
                        elseif Index == 15 then
                            createped(GetHashKey('g_m_m_armboss_01'))
                        elseif Index == 16 then
                            createped(GetHashKey('g_m_m_armgoon_01'))
                        elseif Index == 17 then
                            createped(GetHashKey('g_m_m_armlieut_01'))
                        elseif Index == 18 then
                            createped(GetHashKey('g_m_m_chigoon_01'))
                        elseif Index == 19 then
                            createped(GetHashKey('g_m_m_korboss_01'))
                        elseif Index == 20 then
                            createped(GetHashKey('g_m_m_mexboss_01'))
                        end
                    end
                end
                    Menu.list = Index;
            end)

            RageUI.List('Animal', Menu2.animal, Menu2.list, nil, {}, true, function(Hovered, Active, Selected, Index)
                if (Active) then
                    if Selected then
                        if Index == 1 then
                            createped(GetHashKey('a_c_chop'))
                        elseif Index == 2 then
                            createped(GetHashKey('a_c_pig'))
                        elseif Index == 3 then
                            createped(GetHashKey('a_c_pigeon'))
                        elseif Index == 4 then
                            createped(GetHashKey('a_c_rat'))
                        elseif Index == 5 then
                            createped(GetHashKey('a_c_cat_01'))
                        elseif Index == 6 then
                            createped(GetHashKey("a_c_chickenhawk"))
                        elseif Index == 7 then
                            createped(GetHashKey("a_c_chimp"))
                        elseif Index == 8 then
                            createped(GetHashKey("a_c_fish"))
                        elseif Index == 9 then
                            createped(GetHashKey("a_c_coyote"))
                        elseif Index == 10 then
                            createped(GetHashKey("a_c_cow"))
                        elseif Index == 11 then
                            createped(GetHashKey("a_c_deer"))
                        elseif Index == 12 then
                            createped(GetHashKey("a_c_crow"))
                        elseif Index == 13 then
                            createped(GetHashKey("a_c_boar"))
                        elseif Index == 14 then
                            createped(GetHashKey("a_c_mtlion"))
                        end
                    end
                end
                    Menu2.list = Index;
            end)

            RageUI.List('LSPD', Menu3.lspd, Menu3.list, nil, {}, true, function(Hovered, Active, Selected, Index)
                if (Active) then
                    if Selected then
                        if Index == 1 then
                            createped(GetHashKey('s_f_y_cop_01'))
                        elseif Index == 2 then
                            createped(GetHashKey('csb_trafficwarden'))
                        elseif Index == 3 then
                            createped(GetHashKey('s_m_y_cop_01'))
                        end
                    end
                end
                    Menu3.list = Index;
            end)

            RageUI.List('EMS', Menu4.ems, Menu4.list, nil, {}, true, function(Hovered, Active, Selected, Index)
                if (Active) then
                    if Selected then
                        if Index == 1 then
                            createped(GetHashKey('s_m_m_doctor_01'))
                        elseif Index == 2 then
                            createped(GetHashKey('s_m_m_scientist_01'))
                        elseif Index == 3 then
                            createped(GetHashKey('s_f_y_scrubs_01'))
                        elseif Index == 4 then
                            createped(GetHashKey('s_m_m_paramedic_01'))
                        end
                    end
                end
                    Menu4.list = Index;
            end)

            RageUI.List('Autre', Menu5.autre, Menu5.list, nil, {}, true, function(Hovered, Active, Selected, Index)
                if (Active) then
                    if Selected then
                        if Index == 1 then
                            createped(GetHashKey('s_m_y_blackops_03'))
                        elseif Index == 2 then
                            createped(GetHashKey('s_m_y_clown_01'))
                        elseif Index == 3 then
                            createped(GetHashKey('s_m_m_movspace_01'))
                        elseif Index == 4 then
                            createped(GetHashKey('s_m_m_trucker_01'))
                        elseif Index == 5 then
                            createped(GetHashKey('s_m_y_devinsec_01'))
                        elseif Index == 6 then
                            createped(GetHashKey('s_m_y_prismuscl_01'))
                        elseif Index == 7 then
                            createped(GetHashKey('s_m_y_prisoner_01'))
                        elseif Index == 8 then
                            createped(GetHashKey('ig_andreas'))
                        elseif Index == 9 then
                            createped(GetHashKey('ig_djsoljakob'))
                        elseif Index == 10 then
                            createped(GetHashKey('ig_lestercrest_2'))
                        elseif Index == 11 then
                            createped(GetHashKey('ig_priest'))
                        elseif Index == 12 then
                            createped(GetHashKey('ig_tenniscoach'))
                        elseif Index == 13 then
                            createped(GetHashKey('u_m_m_streetart_01'))
                        elseif Index == 14 then
                            createped(GetHashKey('u_m_y_juggernaut_01'))
                        elseif Index == 15 then
                            createped(GetHashKey('u_m_y_rsranger_01'))
                        elseif Index == 16 then
                            createped(GetHashKey('u_m_y_mani'))
                        elseif Index == 17 then
                            createped(GetHashKey('u_m_y_imporage'))
                        elseif Index == 18 then
                            createped(GetHashKey('u_m_m_partytarget'))
                        elseif Index == 19 then
                            createped(GetHashKey('u_m_m_griff_01'))
                        elseif Index == 20 then
                            createped(GetHashKey('u_f_m_casinoshop_01'))
                        elseif Index == 21 then
                            createped(GetHashKey('ig_tonyprince'))

                        end
                    end
                end
                    Menu5.list = Index;
            end)

            RageUI.List('Michael, Francklin, Trevor', Menu6.gta, Menu6.list, nil, {}, true, function(Hovered, Active, Selected, Index)
                if (Active) then
                    if Selected then
                        if Index == 1 then
                            createped(GetHashKey('player_one'))
                        elseif Index == 2 then
                            createped(GetHashKey('player_zero'))
                        elseif Index == 3 then
                            createped(GetHashKey('player_two'))
                        elseif Index == 4 then
                        end
                    end
                end
                    Menu6.list = Index;
            end)

         
        end, function()
        end)

       

        


       
        if not RageUI.Visible(menuped) then
            menuped=RMenu:DeleteType("treifa", true)
        end

    end

end

Keys.Register('F10', 'F10', 'touche pour ouvrir le menu touche', function() 
    menu()
end)