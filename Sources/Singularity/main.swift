import Compute

struct Singularity
{
    static func main() async throws
    {
        try await onIncomingRequest(handleIncomingRequest)
    }

    static func handleIncomingRequest(req: IncomingRequest, res: OutgoingResponse) async throws
    {
        try await res.send("Hello, Swift.")
    }
}
