BINDING_HEADER_QUICKFOCUS = "QuickFocus"
BINDING_NAME_QUICKFOCUS_SET = "Set Focus"
BINDING_NAME_QUICKFOCUS_TARGET = "Target Focus"
BINDING_NAME_QUICKFOCUS_ASSIST = "Assist Focus"

function QuickFocus_Set()
  if not pfUI.uf or not pfUI.uf.focus then return end
  if UnitName("target") then
    SlashCmdList.PFFOCUS()
  else
    SlashCmdList.PFCLEARFOCUS()
  end
end

function QuickFocus_Target()
  if pfUI.uf and pfUI.uf.focus then
    if pfUI.uf.focus.unitname then
      TargetByName(pfUI.uf.focus.unitname, true)
    end
  end
end

function QuickFocus_Assist()
  if pfUI.uf and pfUI.uf.focus then
    if pfUI.uf.focus.unitname then
      TargetByName(pfUI.uf.focus.unitname, true)
    end
    AssistUnit("target")
  end
end
