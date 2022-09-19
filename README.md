# FaultTolerance

- This is a package delivery system using the OTP concept like Supervisor, GenServer, and Process. Basic purpose of this application is to make system fault tolerance and efficient

## Testing Through Terminal

- packages = FaultTolerance.Package.random_batch(10)
- FaultTolerance.Receiver.receive_packages(packages)
