using assembly System.Windows.Forms
using namespace System.Windows.Forms
$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label
$Label.Text = "SUBASTAS"
$Label.AutoSize = $True
$Form.MinimizeBox = $False
$Form.MaximizeBox = $True
$button = [Button] @{
 Text = 'Subastas'
}
$button1 = [Button] @{
 Text = 'SubastaModerna'
 
}
$button2 = [Button] @{
 Text = 'SubastaAntigua'
 
}
$button3 = [Button] @{
 Text = 'comprar '
 
}

$button4 = [Button] @{
 Text = 'comprar '
 
}

$button.Location = New-Object System.Drawing.Point (50,200)
$button1.Location = New-Object System.Drawing.Point (130,200)
$button2.Location = New-Object System.Drawing.Point (210,200)
$button3.Location = New-Object System.Drawing.Point (20,100)
$button4.Location = New-Object System.Drawing.Point (20,100)
$TextBox = New-Object System.Windows.Forms.TextBox
$TextBox.Location = New-Object System.Drawing.Size(20,220)
$TextBox.Size = New-Object System.Drawing.Size(260,20)

$Caja = New-Object System.Windows.Forms.TextBox
$Caja.Location = New-Object System.Drawing.Size(20,220)
$Caja.Size = New-Object System.Drawing.Size(260,20)



$button.add_Click{

Start-Process "https://www.catawiki.es/?gclid=Cj0KCQiA4sjyBRC5ARIsAEHsELFoukiNqQrElrCGuHEZOVsPKpGtCnjUMlzkjrZpNxq945Dqm-Dw0GgaAtHxEALw_wcB"


}
$button1.add_Click{

$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label

$Label.Text = "Esta es la pagina de subastas modernas"
$Label.AutoSize = $True
$Form.Controls.Add($Label)
$Form.ShowDialog($form.Controls.Add($button3))


}

$button2.add_Click{


$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label

$Label.Text = "Esta es la pagina de subastas antiguas"
$Label.AutoSize = $True
$Form.Controls.Add($Label)
$Form.ShowDialog($Form.Controls.Add($button4))




}

$button3.add_Click{


$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label
$Label.Text = "Buscar objeto moderno"
$Label.AutoSize = $True
$Form.Controls.Add($Label)
$Form.KeyPreview = $True
$Form.Add_KeyDown({if ($_.KeyCode -eq "Enter"){$Var=$Caja.Text;Start-Process https://www.catawiki.es/?gclid=Cj0KCQiA4sjyBRC5ARIsAEHsELFoukiNqQrElrCGuHEZOVsPKpGtCnjUMlzkjrZpNxq945Dqm-Dw0GgaAtHxEALw_wcB$Var;
Start-Process https://www.google.com/search?q=$Var;}})
$Form.Add_KeyDown({if ($_.KeyCode -eq "Escape"){$Form.Close()}})
$Form.ShowDialog($Form.Controls.Add($Caja))


}
$button4.add_Click{


$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label
$Label.Text = "Buscar objeto antiguo"
$Label.AutoSize = $True
$Form.Controls.Add($Label)
$Form.KeyPreview = $True
$Form.Add_KeyDown({if ($_.KeyCode -eq "Enter"){$Var=$Caja.Text;Start-Process https://www.catawiki.es/?gclid=Cj0KCQiA4sjyBRC5ARIsAEHsELFoukiNqQrElrCGuHEZOVsPKpGtCnjUMlzkjrZpNxq945Dqm-Dw0GgaAtHxEALw_wcB$Var;
Start-Process https://www.google.com/search?q=$Var;}})
$Form.Add_KeyDown({if ($_.KeyCode -eq "Escape"){$Form.Close()}})
$Form.ShowDialog($Form.Controls.Add($Caja))


}


$form.Controls.Add($button)
$form.Controls.Add($button1)
$form.Controls.Add($button2)
$form.controls.add($pictureBox)
$Form.Controls.Add($Label)

$Form.ShowDialog()