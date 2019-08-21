controladdin DepartmentView_DSK
{
    MinimumHeight = 700;
    MinimumWidth = 700;
    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;
    Scripts =
        'src/ControlAddins/DepartmentView/js/jquery.min.js',
        'src/ControlAddins/DepartmentView/js/tree.jquery.js';
    StyleSheets =
        'src/ControlAddins/DepartmentView/css/bootstrap.min.css',
        'src/ControlAddins/DepartmentView/css/styles.css';
    StartupScript = 'src/ControlAddins/DepartmentView/js/startup.js';

    event OnClick(menuId: Text);

    event OnLoad();

    procedure LoadData(data: JsonArray);
}