   M S B A M L   `   `   `  ����F  BWPF_CLiente, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:WPF_CLienteWPF_CLiente  5   	       WPF_CLiente.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:WPF_CLiente     5   	     � Title$  
MainWindow��5   	   $	��478��6   $	��800��6)   .��5	      �  � ColumnDefinitions 5
   
   �� 5      .+�5   
   �� -   5         ��Name$ 	btn_Salir��5      $��Salir��6$   $
��Left=�64   $��711,390,0,0q�6O   $	��Top=�6d   6|   �� 5   
   -   5        $ 
btn_Enviar��5      $��Enviar��6%   $
��Left=�66   $��636,390,0,0q�6Q   $	��Top=�6f   6~   �� 5   
   -   5        $ btn_Conectar��5      $��Conectar��6'   $
��Left=�6:   $��556,390,0,0q�6U   $	��Top=�6j   6�   �� 5   
   -   5         ��Name$ tb_Respuesta��5      $
��Left=�6(   $��20��6C   $��
45,390,0,0q�6O    �� TextWrapping$
 Wrap=�6c   $	��Top=�6w   $	��225��6�    �� 
IsReadOnly$
 True��6�   �� 5   
   -   5         ��Name$ 	Respuesta��5      $��Respuesta HEX:��6#   $
��Left=�6<   $��
45,359,0,0q�6W   $	��Top=�6k   �� 5   
   -   5        $ Mensaje��5      $��Mensaje a enviar:��6!   $
��Left=�6=   $��
45,122,0,0q�6X   $	��Top=�6l   �� 5   
   -   5        $ tb_DirrecionIP��5      $
��Left=�6*   $��
110,61,0,0q�6E   $
 Wrap=�6Y   $��	127.0.0.1��6m   $	��Top=�6~   $	��120��6�   6�   �� 5   
   -   5        $ tb_MensajeEnviar��5      $
��Left=�6,   $��
45,153,0,0q�6G   $
 Wrap=�6[   $	��Top=�6o   $	��706��6�   $	��170��6�   �� 5   
   -	   5        $ 	tb_Puerto��5      $
��Left=�6%   $��
476,61,0,0q�6@   $
 Wrap=�6T   $
��8080��6h   $	��Top=�6t   $	��120��6�   �� 5   
   -
   5        $ Puerto��5      $��Puerto��6    $
��Left=�61   $��
426,57,0,0q�6L   $	��Top=�6`   �� 5   
   -   5        $ DireccionIP��5      $��Dirreción IP:��6%   $
��Left=�6=   $��	31,57,0,0q�6X   $	��Top=�6k   5      5      