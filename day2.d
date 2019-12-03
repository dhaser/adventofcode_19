void main()
{
    import std.stdio: write, writeln, writef, writefln;
    int[] arr;
    // arr = [1,9,10,3,2,3,11,0,99,30,40,50];
    arr = [1,12,2,3,1,1,2,3,1,3,4,3,1,5,0,3,2,9,1,19,1,9,19,23,1,23,5,27,2,27,10,31,1,6,31,35,1,6,35,39,2,9,39,43,1,6,43,47,1,47,5,51,1,51,13,55,1,55,13,59,1,59,5,63,2,63,6,67,1,5,67,71,1,71,13,75,1,10,75,79,2,79,6,83,2,9,83,87,1,5,87,91,1,91,5,95,2,9,95,99,1,6,99,103,1,9,103,107,2,9,107,111,1,111,6,115,2,9,115,119,1,119,6,123,1,123,9,127,2,127,13,131,1,131,9,135,1,10,135,139,2,139,10,143,1,143,5,147,2,147,6,151,1,151,5,155,1,2,155,159,1,6,159,0,99,2,0,14,0];
    writeln(arr);    
    
    for (int n = 0; n < 100; n++){
        //writeln("n: ", n);
        for (int v = 0; v < 100; v++){
            int i_ = 0;
            for (int i = i_; i < arr.length; i+=4)
            {
                //writeln("i: ", i);
                arr[1] = n;
                arr[2] = v;
                int[4] l;
                int end = i+4;
                l = arr[i .. end];
                //writeln(l);
                int opcode = l[0];
                switch (opcode)
                {
                    default:    // valid: ends with 'throw'
                    	writeln(l);
                        throw new Exception("unknown opcode");

                    case 1:     // valid: ends with 'break' (break out of the 'switch' only)
                        //writeln("opcode: adds");
                        arr[l[3]] = arr[l[1]] + arr[l[2]];
                        break;

                    case 2:     // valid: ends with 'continue' (continue the enclosing loop)
                        //writeln("opcode: multiplies");
                        arr[l[3]] = arr[l[1]] * arr[l[2]];
                        break;

                    case 99:     // valid: ends with 'goto' (explicit fall-through to next case.)
                        // writeln("opcode: exit");
                        i = 9999999;
                        break;
                }
                // writeln(arr);
            }
            //writeln(arr[0]);
            
            if (arr[0] == 19690720) {
            	int noun = n;
                int verb = v;
                writeln("noun: ", noun);
                writeln("verb: ", verb);
                writeln(100 * noun + verb);
                throw new Exception("exit");
            }
            else {
                // writeln("not 19690720 reset arr");
                arr = [1,12,2,3,1,1,2,3,1,3,4,3,1,5,0,3,2,9,1,19,1,9,19,23,1,23,5,27,2,27,10,31,1,6,31,35,1,6,35,39,2,9,39,43,1,6,43,47,1,47,5,51,1,51,13,55,1,55,13,59,1,59,5,63,2,63,6,67,1,5,67,71,1,71,13,75,1,10,75,79,2,79,6,83,2,9,83,87,1,5,87,91,1,91,5,95,2,9,95,99,1,6,99,103,1,9,103,107,2,9,107,111,1,111,6,115,2,9,115,119,1,119,6,123,1,123,9,127,2,127,13,131,1,131,9,135,1,10,135,139,2,139,10,143,1,143,5,147,2,147,6,151,1,151,5,155,1,2,155,159,1,6,159,0,99,2,0,14,0];
                i_ = 0;
            }
        }
    }
}