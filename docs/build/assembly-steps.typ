= Steps to Assemble
<steps-to-assemble>
Listed below are the steps taken to assemble the robot from scratch. Do
note that this is a prototype robots and precision materials aren’t
used. However, measures have been taken to overcome these imperfections.

== Frame
<frame>
+ Saw the #link("../components/components.md")[laths] to length.
+ Using #link("../components/components.md")[angle brackets] and the 4
  frame pieces, assemble the frame.
  #image("../../img/build/frame1.1.jpg")
+ Saw the #link("../components/components.md")[board] to size.
+ With #link("../components/components.md")[screws] attach the board as
  flooring to the frame.
+ Insert the frame stiffeners, also serving as mounting points for the
  drivetrain assembly. #strong[Note: Do not fasten these to the frame
  until the #link(<drivetrain-mount>)[Drivetrain Mount] has been
  printed. This way you can make sure the spacing isn’t slightly off.]
  #image("../../img/build/frame2.jpg")

#align(center)[#table(
  columns: 1,
  align: (col, row) => (auto,).at(col),
  inset: 6pt,
  [\#\# Drivetrain 1. First attach the motor bracket to the axle.
  #emph[Make sure to have the bracket pointing upwards, such that the
  motor is mounted far from the ground.] 2. Attach the pinion pulley to
  the motor with the grub screw. 3. Now you can attach the motor to the
  bracket loosely, such that the belt can be tensioned later.
  #emph[Beware of the cables, make sure they point across the axle.] 4.
  Attached each wheel pulley to the the side of the wheels where the
  spokes are not chamfered, but just straight and rounded. #emph[This
  might require light force.] 5. Make sure to have the belt on the axle
  before sliding the wheel on. 6. Slide the wheel and pulley assembly
  onto the axle with the pulley on the inside. 7. The belt can now be
  tensioned by fastening the motor in the right spot. #emph[It might be
  easier to take just the wheel off to be able to tension all the screws
  properly.] 8. Repeat mirrored for the other side.
  #image("../../img/build/drivetrain1.jpg")],
  [\#\# Casters 1. In each corner of the of the robot body, a caster
  wheel can be attached. #emph[We used 2 screws and washers for each
  caster. Both screws in a spot where they hit the frame, diagonally
  across from each other.] #image("../../img/build/casters1.jpg")],
)
]

== Drivetrain Mount
<drivetrain-mount>
With the custom designed #link("")[3D printed parts], we can attach the
drivetrain to the frame, and fine-tune the ride-height of the wheels to
optimise grip later. The custom mount requires 3 pieces, a mounting rail
piece for each side and the middle carriage.

+ The 3 pieces can be printed in PLA with a layer height of 0.2mm, 4
  perimeters, and 25% infill to ensure they will be strong enough.
  #emph[#strong[We also used organic supports, introduced in PrusaSlicer
  2.6, which were much easier to remove and resulted in a cleaner
  print.] (You might be able to find more optimal settings, however
  these settings were used on a Prusa i3 MK3S and worked for us.)]
+ The prints should now fit together somewhat loosely as shown below.
  #image("../../img/build/3d-print1.jpg")
+ By mock-fitting the mount assembly to the frame stiffeners, you can
  now make sure the spacing is correct, and fasten the stiffeners to the
  flooring with a couple screws from below.
  #image("../../img/build/3d-print2.jpg")
+ Fasten the rail pieces to the frame stiffeners on the inside of the
  frame with 4 screws each. #emph[Make sure they are in the middle of
  the frame.]
+ The carriage piece can now me fastened to the rails with 4 M5 bolts
  and lock nuts. #emph[The rails are designed such that the M5 nuts with
  fit into the channel without rotating.]

#align(center)[#table(
  columns: 2,
  align: (col, row) => (center,center,).at(col),
  inset: 6pt,
  [#image("../../img/build/3d-print1.1.jpg")],
  [#image("../../img/build/3d-print1.4.jpg")],
  [#image("../../img/build/3d-print1.2.jpg")],
  [#image("../../img/build/3d-print1.3.jpg")],
)
]

#horizontalrule

== Attaching the Drivetrain
<attaching-the-drivetrain>
+ Attach the drivetrain assembly onto the mount with the 6 M5 bolts and
  lock nuts that came with the
  #link("../components/components.md")[Flipsky truck].
  #image("../../img/build/drivetrain-mounting-1.jpg")
+ At this point you can loosen the carriage slightly from the rails, and
  adjust the height of the wheels to ensure proper grip.
