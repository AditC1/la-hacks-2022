pragma solidity ^0.5.0;

contract TodoList {
    uint public taskCount = 0;

    struct Task{
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks;

    event TaskCreated(
        uint id,
        string content,
        bool completed
    );

    event TaskCompleted(
        uint id,
        bool completed
    );

    constructor() public {
        createTask("South Sudan, 7.24133825%");
        createTask("Chad, 11.0801172%");
        createTask("Burundi, 11.7355556%");
        createTask("Malawi, 14.8667688%");
        createTask("Central African Republic, 15.4650841%");
        createTask("Burkina Faso, 18.9572392%");
        createTask("Congo, Dem. Rep., 19.1000004%");
        createTask("Niger, 19.2519093%");
        createTask("Sierra Leone, 26.2008858%");
        createTask("Liberia, 27.5347099%");
        createTask("Mozambique, 30.6038322%");
        createTask("Guinea-Bissau, 33.3354683%");
        createTask("Madagascar, 33.7350769%");
        createTask("Tanzania, 39.9000015%");
        createTask("Benin, 41.4109573%");
        createTask("Uganda, 42.0744171%");
        createTask("Zambia, 44.5244751%");
        createTask("Guinea, 44.6686783%");
        createTask("Rwanda, 46.5999985%");
        createTask("Angola, 46.8906097%");
        createTask("Haiti, 46.9255333%");
        createTask("Mauritania, 47.3484192%");
        createTask("Lesotho, 47.3527374%");
        createTask("Congo, Rep., 49.5171013%");
        createTask("Somalia, 49.7308693%");
        createTask("Mali, 50.5614166%");
        // createTask("Ethiopia, 51.0939827%");
        // createTask("Eritrea, 52.1710968%");
        // createTask("Korea, Dem. People's Rep., 52.3135452%");
        // createTask("Zimbabwe, 52.7476692%");
        // createTask("Togo, 53.9974327%");
        // createTask("Sudan, 55.3897018%");
        // createTask("Nigeria, 55.4000015%");
        // createTask("Namibia, 56.2586937%");
        // createTask("Papua New Guinea, 60.4000015%");
        // createTask("Djibouti, 61.7670822%");
        // createTask("Gambia, The, 62.2730675%");
        // createTask("Cameroon, 64.7213669%");
        // createTask("Equatorial Guinea, 66.7477264%");
        // createTask("Vanuatu, 67.3332672%");
        // createTask("Cote d'Ivoire, 69.6791229%");
        // createTask("Libya, 69.7073517%");
        // createTask("Senegal, 70.3689423%");
        // createTask("Myanmar, 70.3971939%");
        // createTask("Kenya, 71.4379425%");
        // createTask("Botswana, 71.9947586%");
        // createTask("Solomon Islands, 73.3464813%");
        // createTask("Yemen, Rep., 73.7579269%");
        // createTask("Pakistan, 75.3796921%");
        // createTask("Sao Tome and Principe, 76.5590897%");
        // createTask("Eswatini, 79.7304993%");
        // createTask("Micronesia, Fed. Sts., 82.9259186%");
        // createTask("South Africa, 84.3855362%");
        // createTask("Ghana, 85.8735504%");
        // createTask("Cambodia, 86.4000015%");
        // createTask("Comoros, 86.7371368%");
        // createTask("Nicaragua, 88.9073792%");
        // createTask("Syrian Arab Republic, 89.1403198%");
        // createTask("Nepal, 89.9000015%");
        // createTask("Gabon, 91.5715637%");
        // createTask("Kiribati, 91.963028%");
        // createTask("Guyana, 92.5405426%");
        // createTask("Honduras, 93.2067108%");
        // createTask("Grenada, 93.5864487%");
        // createTask("Cabo Verde, 94.1617432%");
        // createTask("Timor-Leste, 96.1233139%");
        // createTask("Bangladesh, 96.1999969%");
        // createTask("Panama, 96.7046356%");
        // createTask("Philippines, 96.8423843%");
        // createTask("Indonesia, 96.9499969%");
        // createTask("Guatemala, 97.0552673%");
        // createTask("Belize, 97.1133347%");
        // createTask("Bolivia, 97.5541229%");
        // createTask("Afghanistan, 97.6999969%");
        // createTask("Mongolia, 98.0999985%");
        // createTask("Suriname, 98.2047729%");
        // createTask("Ecuador, 98.8499985%");
        // createTask("India, 99%");
        // createTask("Marshall Islands, 99.1606064%");
        // createTask("Peru, 99.3118134%");
        // createTask("Mexico, 99.4000015%");
        // createTask("Turks and Caicos Islands, 99.4000015%");
        // createTask("Mauritius, 99.6616516%");
        // createTask("Tuvalu, 99.6892319%");
        // createTask("Bulgaria, 99.6999969%");
        // createTask("Tajikistan, 99.7792969%");
        // createTask("Algeria, 99.8041306%");
        // createTask("Costa Rica, 99.9000015%");
        // createTask("Jordan, 99.9000015%");
        // createTask("Kyrgyz Republic, 99.9810486%");
    }

    function createTask(string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
        emit TaskCreated(taskCount, _content, false);
    }

    function toggleCompleted(uint _id) public {
        Task memory _task = tasks[_id];
        _task.completed = !_task.completed;
        tasks[_id] = _task;
        emit TaskCompleted(_id, _task.completed);
    }

} 