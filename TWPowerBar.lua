function updatePowerBar()

    local power = UnitMana('player')
    getglobal('TWPowerBarPower'):SetWidth(power * 200 / UnitManaMax('player'))

    if UnitPowerType('player') == 0 then --mana
        getglobal('TWPowerBarPower'):SetBackdropColor(0.06, 0.06, 1, 1)
        getglobal('TWPowerBarBackground'):Show()
        getglobal('TWPowerBarPower'):Show()
        getglobal('TWPowerBarPowerText'):SetText(power .. '/' .. UnitManaMax('player'))
    end

    if UnitPowerType('player') == 1 then --rage
        getglobal('TWPowerBarPower'):SetBackdropColor(1, 0.06, 0.06, 1)
        if power > 0 then
            getglobal('TWPowerBarBackground'):Show()
            getglobal('TWPowerBarPower'):Show()
            getglobal('TWPowerBarPowerText'):SetText(power)
        else
            getglobal('TWPowerBarBackground'):Hide()
            getglobal('TWPowerBarPower'):Hide()
        end
    end

    if UnitPowerType('player') == 3 then --energy

        getglobal('TWPowerBarPower'):SetBackdropColor(1, 0.96, 0.41, 1)
        getglobal('TWPowerBarBackground'):Show()
        getglobal('TWPowerBarPower'):Show()
        getglobal('TWPowerBarPowerText'):SetText(power)
    end
end
