   M S B A M L   `   `   `  ����P  LWPFTools.Presentation, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullR=clr-namespace:WPFTools.Windows;assembly=WPFTools.PresentationWPFTools.Windows  5      F BWorkManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WorkManager.ViewsWorkManager.Views 5      dFclr-namespace:WPFTools.Windows.Controls;assembly=WPFTools.PresentationWPFTools.Windows.Controls  5      R=clr-namespace:WPFTools.Helpers;assembly=WPFTools.PresentationWPFTools.Helpers  5	      dFclr-namespace:WPFTools.MarkupExtensions;assembly=WPFTools.PresentationWPFTools.MarkupExtensions  5
      X@clr-namespace:WPFTools.Converters;assembly=WPFTools.PresentationWPFTools.Converters  5      H DWPFTools.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullF3clr-namespace:WPFTools.Enums;assembly=WPFTools.CoreWPFTools.Enums 5      )   #WorkManager.Views.NewTaskWindowView   5      Fdwin=clr-namespace:WPFTools.Windows;assembly=WPFTools.Presentation  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      1localclr-namespace:WorkManager.Views     5      XdcontFclr-namespace:WPFTools.Windows.Controls;assembly=WPFTools.Presentation     5      Nhelp=clr-namespace:WPFTools.Helpers;assembly=WPFTools.Presentation     5	      VmExFclr-namespace:WPFTools.MarkupExtensions;assembly=WPFTools.Presentation     5
      Rdconv@clr-namespace:WPFTools.Converters;assembly=WPFTools.Presentation     5      Fcdenum3clr-namespace:WPFTools.Enums;assembly=WPFTools.Core     5      $	��650��5   %   $
��1000��62   .��5      �   � 	Resources  5      #   WPFTools.Helpers.BindingProxy   ProxyContext   Data0   *WPFTools.MarkupExtensions.TrackingProvider  trackingProvider   TrackingGroup �� Source �� Path   TrackingObject �� UpdateSourceTrigger��%�   &	        &	      7   7     5       6/   ��   5       5      �� 8   $ Data.TrackingGroup� 5      �� 8  $ 	Data.Task�$ PropertyChanged=�5       � RowDefinitions 5      �� 5      �� 5      $
��auto �6   .+�5      � $��3q�6    5      �� 5   
   $
��auto �6   �� 5   
   $
��auto �6   �� 5   
   $��* �6   �� 5   
   $��* �6   .+�5       -   'WPFTools.Windows.Controls.HeaderControl     Header$ Nazwa��6     HeaderControlStyle4#��[ 6+   $��3q�6X   	   HeaderStyle	 5!   
   �� 5"      
 �� 
TargetType"
 ��6     HeaderControlHeaderStyle4 �� BasedOn# [ 67    �� Triggers 5#      �� 5$       �� Binding 6   �� *Result+ 5   /WPFTools.MarkupExtensions.TrackingPropertyState     PropertyName$
 Name��   Provider# [ $ PropertyChanged=� �� 	Converter *   $WPFTools.Converters.HasFlagConverter  "  WPFTools.Enums.PropertyState   Changed �� ConverterParameter# Z  �� Value true6  .a�5%      ��  �� Property � �� �� Value$
 Bold"�6/   5&      �� 5'       6   �� *Result+   $
 Name��# [ $ PropertyChanged=�      NotValid# Z  true6  .a�5(      ��  � ��
 �  ��6/   5)      5+      .��5-   
   �� $��2q�6   $��16(�6k     	MainBrush#��[ 6y   ��6   �� *	Task.Name+$ PropertyChanged=� �� Mode$ TwoWay=�6y   5.   	   � 5/      $��1��6    � ColumnDefinitions 50   
   �� 51      $��* �6   �� 52      $��* �6   �� 53      $��* �6   .+�55   
     $ 	Wykonawca��6   #��[ 61   $��3q�6^   	 56      �� 57      "
 ��6   # [ 69    58      �� 59       6   �� *Result+   $ 	AccountId��# [ $ PropertyChanged=�   # Z  true6%  .a�5:      ��  � ��$
 Bold"�61   5;      �� 5<       6   �� *Result+   $ 	AccountId��# [ $ PropertyChanged=�   # Z  true6&  .a�5=      ��  � ��
 �  ��61   5>      5@      .��5B      ��  �� SelectedValuePath$ Id��6p    �� DisplayMemberPath$
 Name��5C       �� SelectedValue 5B      �� *Task.AccountId+$ PropertyChanged=�$ TwoWay=���5D      �� *
Accounts+5E        5F   
   $��1��6   $$ Przewidywany czas rozpoczęcia��6.   #��[ 6U   $��3q�6�   	 5G      �� 5H      "
 ��6   # [ 69    5I      �� 5J       6   �� *Result+   $ EstimateStart��# [ $ PropertyChanged=�   # Z  true6)  .a�5K      ��  � ��$
 Bold"�61   5L      �� 5M       6   �� *Result+   $ EstimateStart��# [ $ PropertyChanged=�   # Z  true6*  .a�5N      ��  � ��
 �  ��61   5O      5Q      .��5S      (  "System.Windows.Controls.DatePicker     SelectedDate 6   �� *Task.EstimateStart+$ PropertyChanged=�$ TwoWay=�5T        5U   
   $��2��6   $$ Przewidywany czas zakończenia��6.   #��[ 6U   $��3q�6�   	 5V      �� 5W      "
 ��6   # [ 69    5X      �� 5Y       6   �� *Result+   $ EstimateEnd��# [ $ PropertyChanged=�   # Z  true6'  .a�5Z      ��  � ��$
 Bold"�61   5[      �� 5\       6   �� *Result+   $ EstimateEnd��# [ $ PropertyChanged=�   # Z  true6(  .a�5]      ��  � ��
 �  ��61   5^      5`      .��5b         6   �� *Task.EstimateEnd+$ PropertyChanged=�$ TwoWay=�5c      5d   	     5e      $��2��6   $
 Opis��6)   #��[ 67   $��3q�6d   	 5f   
   �� 5g      "
 ��6   # [ 67    5h      �� 5i       6   �� *Result+   $ Description��# [ $ PropertyChanged=�   # Z  true6%  .a�5j      ��  � ��$
 Bold"�6/   5k      �� 5l       6   �� *Result+   $ Description��# [ $ PropertyChanged=�   # Z  true6&  .a�5m      ��  � ��
 �  ��6/   5n      5p      .��5r   
   ��  �� AcceptsReturn . $��2q�6'   " �� VerticalScrollBarVisibility$
 Auto=�6�   ��63   �� *Task.Description+$ PropertyChanged=�$ TwoWay=�6�   5s   	   �� 5t      $��4��6   $��3q�6   ��5u   
   �� 5v      .R�5w      �� $��ZASOBY��6   $��10(�6&   ��5x      �� 5y      "
 ��6   .�5z      ��  � ��$ Normal"�61    5{      �� 5|       6"   �� *Result+   $ ResourceForTask��# [ $ PropertyChanged=�   # Z  true6/  .a�5}      ��  � ��$
 Bold"�65   5~      5�      5�      5�      .��5�   
   �  � DataContext 6   �� *Task+ 5�      �� 5�      $
��auto �6   �� 5�      $��* �6   .+�5�      � $��5,0,5,5q�6    5�      �� 5�      $��* �6!   �� 5�      $
��auto �6!   .+�5�      �� -   5          ��Name$  AvailableResourcesCB��5�      $ Id��65   $��Stretch=�6L   $
 Name��5�   {   ��6+   �� *AvailableResources+$ PropertyChanged=�6{   �� 5�      $��1��6   $��0��6%   $��5q�62   $��0q�6>     ButtonStyle2#��[ 5�   )   $��Center=�5�   )   ! � ToolTip$! Dodaj zasób��5�   )   ��5�   )   �� *Data.AddResourceCommand+# [  ��5�   )   �� *SelectedItem+ %  System.Windows.Markup.Reference  *AvailableResourcesCB+$ PropertyChanged=�{�5�   )   7	   1WPFTools.MarkupExtensions.BooleanModifyPermission	  *TSK+  5�        ButtonStyle2.CornerRadius��%)   &	       ��5�      0,2,2,0��6J   5�      .��5�      F� $��12��6   $��12��6!   +����     � �@B  � � �     � � @B 	" �� Stretch$
" Fill=�6P   $��1��6�   ��6_   �� *
Foreground+# �� RelativeSource# �� $ �� Mode$$ FindAncestor=�% �� AncestorType"% ��$ PropertyChanged=�6�   5�      5�      �� 5�      $��1��6   $��Disabled=�6&   $
��Auto=�6O     SubBackgroundBrush#��[ 6r   .��5�      �� ��6   �� *ResourceForTask+$ PropertyChanged=���5�      �� 5�      .R�5�      � 5�      ��5�      �� 5�      .R�5�      �� $��1q�6   & �� CornerRadius$& 1��6/   $��3q�6@   ' �� Padding$' 1q�6K   $	��160��6W     5�        ProxyElement��%�   &	       &	      7   7    5�       6?   ��   5�       5�   3   �� 8   $ Data.TrackingGroup� 5�   3   �� 8  $
 Data�5�      ��5�      �� 5�      "
 ��6   .�5�      ��  � �� 	 BackgroundBrush# [	 67   �� 5�       � �� 
 AssistantBrush# [
 68    5�      �� 5�       6(   �� *TrackingState+$ PropertyChanged=�   "
  WPFTools.Enums.TrackingState( 
  Added# Z(  true6�   .a�5�      ��  � ��  HighlightBrush# [ 6<   5�      �� 5�       6(   �� *TrackingState+$ PropertyChanged=�   ) 
  Deleted# Z)  true6�   .a�5�      ��  � �� 5�       �� 5�   "     BackgroundColor* �� Color#* [ 62   + �� Opacity$	+ 0.5Q�6[   5�      �� 5�       � �� 5�       �� 5�   "     AssistantColor#* [ 62   $	+ 0.5Q�6Z   5�      5�      5�      ._�5�      �  5�      �� 5�      $
��auto �6(   �� 5�      $
��auto �6(    5�      �� 5�      $��* �6+   �� 5�      $
��auto �6+   .+�5�      �� $��Center=�6A   $
��Wrap=�6\   , �� Padding$	, 3,0q�6p   $��11(�6~   ��6"   �� *Resource.Name+6~   �� 5�      $��1��6   $��1q�6/   $��16��6;   $��16��6F   $��16��6R   $	��Top=�6`   ��5�   3   �� *Data.RemoveResourceCommand+# [  ��6�   �� {�5�   3   	  *TSK+  5�      ��%#   &	       ��5�      1��6N   5�      ��5�      �� 5�      "
 ��6"   # [ 6?    5�      ^� 5�       - ^� 
Conditions- 5�   "   �� 5�   $   . �� Binding. 6.   �� *TrackingState+$ PropertyChanged=�   # Z) / �� Value	/ false6�   �� 5�   $   . 6.   �� *IsMouseOver+# �� *Self+$ PropertyChanged=�	/ false6�   .0�5�   "   ��  � �� 5�   $   �� 5�   &   $B��<pack://application:,,,/Resources/Images/delete_32_2C3E50.png��6,   5�   #   �� 5�   "    �@�ToolTip$ Usuń��6<   5�   !   ^� 5�       - 5�   "   �� 5�   $   . 6.   �� *TrackingState+$ PropertyChanged=�   # Z) 	/ false6�   �� 5�   $   . 6.   �� *IsMouseOver+# �� *Self+$ PropertyChanged=�/ true6�   .0�5�   "   ��  � �� 5�   $   �� 5�   &   $B��<pack://application:,,,/Resources/Images/delete_32_FFFFFF.png��6,   5�   #   �� 5�   "    �@�ToolTip$ Usuń��6<   5�   !   ^� 5�       - 5�   "   �� 5�   $   . 6.   �� *TrackingState+$ PropertyChanged=�   # Z) / true6�   �� 5�   $   . 6.   �� *IsMouseOver+# �� *Self+$ PropertyChanged=�	/ false6�   .0�5�   "   ��  � �� 5�   $   �� 5�   &   $C��=pack://application:,,,/Resources/Images/restore_32_2C3E50.png��6,   5�   #   �� 5�   "    �@�ToolTip$ 
Przywróć��6<   5�   !   ^� 5�       - 5�   "   �� 5�   $   . 6.   �� *TrackingState+$ PropertyChanged=�   # Z) / true6�   �� 5�   $   . 6.   �� *IsMouseOver+# �� *Self+$ PropertyChanged=�/ true6�   .0�5  "   ��  � �� 5  $   �� 5  &   $C��=pack://application:,,,/Resources/Images/restore_32_FFFFFF.png��6,   5  #   �� 5  "    �@�ToolTip$ 
Przywróć��6<   5  !   5	     5     � 5     $��1��6   $��2��6*   $��3q�6>    5     �� 5     $
��auto �6-   �� 5     $��* �6-   .+�5     �� $��Ilość��6$   $��Center=�61   $
��Wrap=�6L   $��10(�6`   $��0,0,3,0q�6n   *   $WPFTools.Windows.Controls.DecimalBox  5     $��1��6+   $��1q�6;   $��10(�6G   0   Value0 5  =   �� *Count+$ PropertyChanged=�$ TwoWay=�5     5     5     5     5     5     5     5  	   5     � 5     $��1��6   $��3q�6   $��Right=�6#    5     �� 5   
   $��* �6   �� 5!  
   $��* �6   .+�5#     �� $��ANULUJ��6   #��[ 6    ��6F   �� *CancelCommand+�� 5$     $��1��6   $��ZAPISZ��6     ButtonStyle1#��[ 60   ��6V   �� *SaveCommand+5%     5&     5'     