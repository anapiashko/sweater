<#import "parts/common.ftl" as c>

<@c.page>

    <table>
        <tread>
            <th> Name </th>
            <th> Role </th>
            <th></th>
        </tread>

        <tbody>
        List of users
        <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td><a href="/user/${user.id}">edit</a> </td>
            </tr>
        </#list>
        </tbody>

    </table>
</@c.page>