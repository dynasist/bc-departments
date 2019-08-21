var data = [];
window.LoadData = function (input) {
    data = input;
}

$(document).ready(function () {
    var div = $('#controlAddIn');
    div.append(`
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3 sidebar tree-content">
                <div id="tree"></div>
            </div>
            <div class="col-md-9 tree-content">
                <div id="submenu-area"></div>
            </div>
        </div>
    </div>
    `);
    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("OnLoad", [], false, function () {
        var department = $('#tree');
        department.tree({
            openedIcon: '',
            closedIcon: '',
            autoOpen: false,
            selectable: true,
            data: data,
            onCreateLi: function (node, $li, is_selected) {
                if (node.children.length == 0) {
                    $li.hide();
                }
            }
        });

        initSubArea(data);

        department.height(div.height());

        department.on(
            'tree.click',
            function (event) {
                var node = event.node,
                    nodeFound = false;

                nodeFound = data.filter(function (val) {
                    return val.id === node.id;
                }).length > 0;

                if (nodeFound) {
                    for (let i = 0; i < data.length; i++) {
                        var element = department.tree('getNodeById', data[i].id);
                        if (element.id != node.id) {
                            department.tree('closeNode', element);
                        }
                    }
                }

                department.tree('toggle', node);
                initSubArea([node]);
            }
        );

        function initSubArea(submenus) {
            var submenuArea = $('#submenu-area');
            submenuArea.tree('destroy');
            submenuArea.tree({
                openedIcon: '',
                closedIcon: '',
                autoOpen: true,
                selectable: false,
                data: submenus
            });

            submenuArea.height(div.height());

            submenuArea.on(
                'tree.click',
                function (event) {
                    var node = event.node;
                    if (node.children.length === 0) {
                        event.preventDefault();

                        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("OnClick", [event.node.id], false);
                    } else {
                        submenuArea.tree('toggle', node);
                    }
                }
            );
        }
    });
});