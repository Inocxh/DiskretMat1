DiskretMat1 := module()
    description "Tools for the DTU course discrete mathematics 1";
    options package;

    export ExtendedEuclid, ExtendecEuclidPoly, BoolskSimplify, Uopfyldelig, Ækvivalent, Implicerer, Opfyldelig, Opfyld, Gyldig, Sandhedstabel, sfd, mfm;
    local Logik;

        ExtendedEuclid := proc(one,two)
                local out,new,k,a,b;
                #Initialization of first three rows.
                out := Array(1 .. 1, 1 .. 5); k; a := one;b := two;new := a mod b;
                out(1) := k;out(2) := r__k;out(3) := q__k; out(4) := s__k; out(5) := t__k; 
                out(2, 1) := 1;out(2, 2) := one;out(2, 3) := "-"; out(2, 4) := 1; out(2, 5) := 0; out(3, 1) := 2; out(3, 2) := two; out(3, 3) := "-"; out(3, 4) := 0; out(3, 5) := 1;
                k := 4; #The current row we operate on
                
                    out(k, 1) := k - 1;
                    out(k, 2) := new;
                    out(k, 3) := iquo(a, b);
                    out(k, 4) := out(k - 2, 4) - out(k, 3)*out(k - 1, 4);
                    out(k, 5) := out(k - 2, 5) - out(k, 3)*out(k - 1, 5);

                while new <> 0 do
                    k := k + 1;
                    a := b;
                    b := new;
                    new := a mod b;

                    out(k, 1) := k - 1;
                    out(k, 2) := new;
                    out(k, 3) := iquo(a, b);
                    out(k, 4) := out(k - 2, 4) - out(k, 3)*out(k - 1, 4);
                    out(k, 5) := out(k - 2, 5) - out(k, 3)*out(k - 1, 5);
                end do;
                return out;
            end proc;
			
		ExtendecEuclidPoly := proc(in1, in2, x) 
			local a, b, remainder, quotient, out, k;
			#Initialization of variables and already known rows
			a := in1; b := in2; remainder := rem(a, b, x); quotient := quo(a, b, x);
			out := Array(1 .. 1, 1 .. 5); out(1) := k; out(2) := r__k; out(3) := q__k; out(4) := s__k; out(5) := t__k;
			out(2, 1) := 1; out(2, 2) := a; out(2, 3) := "-"; out(2, 4) := 1; out(2, 5) := 0;
			out(3, 1) := 2; out(3, 2) := b; out(3, 3) := "-"; out(3, 4) := 0; out(3, 5) := 1;
			
			#Fencepost solution, first post init so we always get the last operation
			k := 4; out(k, 1) := k - 1; out(k, 2) := remainder; out(k, 3) := quotient; out(k, 4) := out(k - 2, 4) - out(k, 3)*out(k - 1, 4); out(k, 5) := out(k - 2, 5) - out(k, 3)*out(k - 1, 5);
			while remainder <> 0 do 
				k := k + 1;
				a := b;
				b := remainder;
				remainder := rem(a, b, x);
				out(k, 1) := k - 1; out(k, 2) := remainder; out(k, 3) := quotient; out(k, 4) := out(k - 2, 4) - out(k, 3)*out(k - 1, 4); out(k, 5) := out(k - 2, 5) - out(k, 3)*out(k - 1, 5);
			end do;
			return out;
		end proc;

     BoolskSimplify := proc(A)
    Logic[BooleanSimplify](A);
    end proc;

    Uopfyldelig := proc(A)
    Logic[Contradiction](A);
    end proc;

    Ækvivalent := proc(A,B)
    Logic[Equivalent](A,B);
    end proc;

    Implicerer := proc(A,B)
    Logic[Implies](A,B);
    end proc;

    Opfyldelig := proc(A)
    Logic[Satisfiable](A);
    end proc;

    Opfyld := proc(A)
    Logic[Satisfy](A);
    end proc;

    Gyldig := proc(A)
    Logic[Tautology](A);
    end proc;

    Sandhedstabel := proc(A)
    Logic[TruthTable](A);
    end proc;

    sfd := proc(A,B) 
    gcd(A,B)
    end proc;

    mfm := proc(A,B)
    A*B/gcd(A,B)
    end proc;
end module; 
