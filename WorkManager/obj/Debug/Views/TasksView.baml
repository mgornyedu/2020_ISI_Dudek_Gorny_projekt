   M S B A M L   `   `   `  ����P  LWPFTools.Presentation, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nulldFclr-namespace:WPFTools.Windows.Controls;assembly=WPFTools.PresentationWPFTools.Windows.Controls  5      R NWorkManager.Data.Models, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null`Eclr-namespace:WorkManager.Data.Enums;assembly=WorkManager.Data.ModelsWorkManager.Data.Enums 5      H DWPFTools.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullH4clr-namespace:WPFTools.Models;assembly=WPFTools.CoreWPFTools.Models 5	      R=clr-namespace:WPFTools.Helpers;assembly=WPFTools.PresentationWPFTools.Helpers  5
      F BWorkManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:WorkManager.ConvertersWorkManager.Converters 5      X@clr-namespace:WPFTools.Converters;assembly=WPFTools.PresentationWPFTools.Converters  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5      !   WorkManager.Views.TasksView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      XdcontFclr-namespace:WPFTools.Windows.Controls;assembly=WPFTools.Presentation     5      c	 _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity 	 5      PenumEclr-namespace:WorkManager.Data.Enums;assembly=WorkManager.Data.Models 	 5      Amodels4clr-namespace:WPFTools.Models;assembly=WPFTools.Core 	 5	      Eh=clr-namespace:WPFTools.Helpers;assembly=WPFTools.Presentation 	 5
      /conv$clr-namespace:WorkManager.Converters 	 5      Ldconv@clr-namespace:WPFTools.Converters;assembly=WPFTools.Presentation 	 5      0sys&clr-namespace:System;assembly=mscorlib 	 5      .��5      �   � 	Resources  5      #   WPFTools.Helpers.BindingProxy   contextProxy   Data  Zero��%N   &	        &	 !       5       6   �� 6(   ��5      0��6"   5       � RowDefinitions 5      �� 5      $
��auto �6   �� 5      .+�5      -   'WPFTools.Windows.Controls.HeaderControl    HeaderControlStyle1#��[ 6-      Header 6   ��    HeaderTemplate 5      �� 5   
   .R�5      ��   	MainBrush#���  6   $��0,0,0,3q�6=    �� Padding$ 3,3,0,1q�6W   ._�5      �  � ColumnDefinitions 5      �� 5      $
��auto �6#   �� 5       $��* �6#   �� 5!      $
��auto �6#   .+�5#      �� $��Wybierz projekt:��6   $��14(�62   $
��Bold"�6@   $��Center=�6R   $��0,0,3,3q�6m   #��[ 6~   �� 5$      $��1��6   $��Center=�6)   $��Stretch=�6D    �� DisplayMemberPath$
 Name��5%      $��14(�6+   $
��Bold"�69   $��0,0,0,3q�6K    �� SelectedValuePath$ Id��5(      ��5&      �� *
Projects+	 �� SelectedValue	 5'      �� *	ProjectId+
 �� UpdateSourceTrigger$
 PropertyChanged=� �� Mode$ TwoWay=�5(      �� 5)      $��2��6   $
��10,4q�6'   $��3,0,3,3q�66     ButtonStyle2#��[ 6G   ��6m   �� *AddTaskCommand+.��5*      �  5+      �� 5,      $
��auto �6'   �� 5-      $��* �6'   .+�5/      F� $��16��6   $��16��6%   +����     � �@B  � � �     � � @B 	 �� Stretch$
 Fill=�6T   $��2��6�   ��6c   �� *
Foreground+ �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType" ��$
 PropertyChanged=�6�   �� 50      $��1��6   $��NOWE ZADANIE��6.    �� TextAlignment$ Center=�6B   $��Center=�6Y   $��5,0,0,0q�6t   51      52      53      54      55      57      � 58      $��1��6   {�6   �� *	ProjectId+$
 PropertyChanged=� �� 	Converter )   #WPFTools.Converters.IsNullConverter     	NullValue .    59        TaskTemplate �� 
TargetType �� Property  BackgroundBrush �� Value  AssistantBrush � ToolTip �� Source  Key �� BasedOn �� Triggers P� Property P� Value 	 ShortDateFormat �� StringFormat �� TargetNullValue ��Name. 	 (System.Windows.Interactivity.Interaction   Triggers/ 	 )System.Windows.Interactivity.EventTrigger    	EventName. 	 (System.Windows.Interactivity.TriggerBase!   Actions6 	 0System.Windows.Interactivity.InvokeCommandAction"   Command# �� Path$   CommandParameter% `� 	Converter5  /WorkManager.Converters.ChangeTaskStateConverter& �� ElementName 
 SubBackgroundBrush  TasksListStyle  HighlightBrush' �� Padding��%4  &	       7  7  7   7  7  7   7  7 	 7 	 7   '��      7 
 &	 �    7  7  �� 5:   
   .R�5;      �� ��5<      �� 5=      " ��6   .�5>      ��  � ��8   6/   �� 5?       � ��8  60   �� 5@       � ��$ 1q�64   �� 5A       � ��$ 5q�6+   �� 5B       �@��Padding$ 5q�6,   5C      ._�5E      � .+�5F      �� 
������ 6   � 5G       5H      �� 5I      �� 5J      .+�5L      �  5M      �� 5N      $
��auto �6'   �� 5O      $��* �6'   �� 5P      $
��auto �6'   �� 5Q      $
��auto �6'   .+�5S      �� $ Edytuj dane zadania��6   $��0��69   $��1q�6I   $��18��6U   $��18��6`   $��16��6l   $	��Top=�6z   ��5T      �� *Data.EditCommand+8  ��6f   ��   5U      ����5V      ButtonStyle2.CornerRadius 1��6J   5W      ��5X      �� 5Y      " ��6   8  .�5Z      ��  � �� 5[      �� 5\      $@��:pack://application:,,,/Resources/Images/edit_32_2C3E50.png��6$   5^       5_      P� 5`       �@J�IsMouseOver . . �5a      ��  � �� 5b       �� 5c   "   $@��:pack://application:,,,/Resources/Images/edit_32_FFFFFF.png��6(   5e      5f      5h      5j      �� 5k      $��1��6   $
��Bold"�5l      $��14(�60   8�� $
 Left=�5m      $
��Wrap=�63   $��Center=�6G   $��3q�6b   ��5k   .   �� *Name+$
 PropertyChanged=�5m   b   �� 5n      $ Usuń zadania��6   $��4��62   $��1q�6B   $��18��6N   $��18��6Y   $��16��6e   $	��Top=�6s   ��5o      �� *Data.RemoveCommand+8  ��6h   ��   5p      ����5q      ButtonStyle2.CornerRadius 1��6J   5r      ��5s      �� 5t      " ��6   8  .�5u      ��  � �� 5v      �� 5w      $B��<pack://application:,,,/Resources/Images/delete_32_2C3E50.png��6$   5y       5z      P� 5{       �@J�IsMouseOver . . �5|      ��  � �� 5}       �� 5~   "   $B��<pack://application:,,,/Resources/Images/delete_32_FFFFFF.png��6(   5�      5�      5�      5�      5�      � 5�      $��1��6    5�      �� 5�      $
��auto �6$   �� 5�      $
��auto �6$    5�      �� 5�      $
��auto �6'   �� 5�      $
��auto �6'   �� 5�      $��* �6'   �� 5�      $
��auto �6'   .+�5�      �� $��0��6   $E��?pack://application:,,,/Resources/Images/date_from_32_B9CCE2.png��6'   $��18��6p   $��1q�6{   $��Center=�6�   �� 5�      $��0��6   $��1��6+   $
 Left=�5�      $	��3,1q�63   $��Center=�6@   $��CharacterEllipsis=�6[   ��5�   ;   �� *EstimateStart+$
 PropertyChanged=�8  $ --��5�   [   �� 5�      $��1��6   $C��=pack://application:,,,/Resources/Images/date_to_32_B9CCE2.png��6'   $��18��6n   $��1q�6y   $��Center=�6�   �� 5�      $��1��6   $��1��6+   $
 Left=�5�      $	��3,1q�63   $��Center=�6@   $��CharacterEllipsis=�6[   ��5�   ;   �� *EstimateEnd+$
 PropertyChanged=�8  $ --��5�   [   �� 5�      $��0��6   $��3��6'   $F��@pack://application:,,,/Resources/Images/task_state_32_B9CCE2.png��67   $��18��6�   $��1q�6�   $��Center=�6�   �� 5�      $ 
PART_State��6   $��0��61   $��2��6>   $
 Name��6N   $��85��6g   $��Right=�6r   $��1,3,1,1q�6�   $ Value��5�   m   {�5�      �� *	AccountId+$
 PropertyChanged=�    .  ��5�      �� *States+$
 PropertyChanged=�	 5�      �� *State+$
 PropertyChanged=�$ OneWay=� 5�        5�      $  SelectionChanged��6'   .! 5�        " 60   �� $# Data.ChangeStateCommand�8 	 $ 5�      `� 5�      % 6+     .1�5�       �� $# .�6(   �� 5�       $& 
PART_State��6(   $# SelectedItem.Value�6A   5�      5�      5�      5�      �� 5�      $��1��6   $��3��6'   $@��:pack://application:,,,/Resources/Images/user_32_B9CCE2.png��67   $��18��6{   $��1q�6�   $��Center=�6�   �� 5�      $��1��6   $��2��6+   $ Right=�5�      $	��3,1q�64   $��Center=�6A   $��CharacterEllipsis=�6\   ��5�   ;   �� *	Account+$
 PropertyChanged=�$ --��5�   \   5�      5�      5�      5�      5�      �� 5�   
   " ��6   .�5�      ��  � ��$ 0q�6.   �� 5�       � ��8   6)   �� 5�       � ��$ Disabled=�6I   5�      �� 5�   
   "  6'   .�5�      ��  � ��$ 3q�6%   �� 5�       �@ HeaderTemplate 5�      �� 5�      .R�5�      �� $��0,0,0,2q�6   8��  ._�5�      �� $��12(�6/   $
��Bold"�6=   8�� $ Center=�6|   $' 5q�6�   ��6   �� 6�   5�      5�      5�      5�      5�   	    5�      �� 5�   
   $
��Auto �6   �� 5�   
    5�      �� 5�   
   �� 5�   
   �� 5�   
   �� 5�   
   .+�5�        $
 NOWE��6   $��1��6*   $��0��67   #��[ 6G   .��5�   
   �� ��6   �� *
NewTasks+$
 PropertyChanged=���5�      �� 5�      " ��6   .�5�      ��  � ��# [ 6+   5�      5�      5�   	     5�      $ AKTYWNE��6   $��1��6-   $��1��6:   #��[ 6K   .��5�   
   �� ��6   �� *ActiveTasks+$
 PropertyChanged=���5�      �� 5�      " ��6   .�5�      ��  � ��# [ 6+   5�      5�      5�   	     5�      $ 
WSTRZYMANE��6   $��1��60   $��2��6=   #��[ 6N   .��5�   
   �� ��6   �� *SuspendTasks+$
 PropertyChanged=���5�      �� 5�      " ��6   .�5�      ��  � ��# [ 6+   5�      5�      5�   	     5�      $ ZAKOŃCZONE��6   $��1��60   $��3��6=   #��[ 6N   .��5�   
   �� ��6   �� *CompleteTasks+$
 PropertyChanged=���5�      �� 5�      " ��6   .�5�      ��  � ��# [ 6+   5�      5�      5�   	   5�      5�      5�      